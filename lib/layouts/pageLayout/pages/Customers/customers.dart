import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:realm/realm.dart';
import 'package:workwise/db/db.dart';
import 'package:workwise/layouts/pageLayout/pages/Customers/model/customer.dart';
import 'package:workwise/layouts/pageLayout/pages/Customers/states/selectedCustomerState.dart';
import 'package:workwise/layouts/pageLayout/pages/widget/searchbar/searchbar.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:workwise/widgets/InputField/InputField.dart';
import 'package:workwise/widgets/basic/CustomButton.dart';
import 'package:workwise/widgets/basic/Title.dart';
import 'package:workwise/widgets/customers/customerlist.dart';
import 'package:workwise/widgets/dailyexpanse/widget/tag.dart';

class Customers extends StatelessWidget {
  const Customers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: TSizes.spaceBtwSections,
              left: TSizes.spaceBtwSections,
              top: TSizes.spaceBtwSections,
            ),
            child: Column(
              children: [
                SizedBox(height: TSizes.spaceBtwSections),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: TSizes.spaceBtwSections),
                        Searchbar(),
                        const SizedBox(height: TSizes.spaceBtwSections),
                        CustomTitle("Customers"),
                        const SizedBox(height: TSizes.spaceBtwSections),
                        _buildAddCustomerButton(context),
                        const SizedBox(height: TSizes.spaceBtwSections),
                        CustomerList(
                          open: () {
                            _showAddCustomerSheet(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildAddCustomerButton(BuildContext context) {
    final CustomerState customerState = Get.put(CustomerState());
    return customButton(
      width: double.infinity,
      height: 50,
      wedge: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Iconsax.add_square4),
          SizedBox(width: TSizes.defaultSpace),
          Text(
            'Add New Customer',
            style: TextStyle(
              color: TColors.textSecondary,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.15,
            ),
          ),
        ],
      ),
      onClick: () {
        customerState.clearCurrentCustomer();
        _showAddCustomerSheet(context);
      },
    );
  }

  void _showAddCustomerSheet(BuildContext context) {
    showMaterialModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(TSizes.lg),
          topRight: Radius.circular(TSizes.lg),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      backgroundColor: TColors.black10,
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 508,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Padding(
                padding: const EdgeInsets.all(TSizes.lg),
                child:
                    SingleChildScrollView(child: _buildCustomerForm(context)),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildCustomerForm(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final CustomerState customerState = Get.put(CustomerState());
    var customer = customerState.currentCustomer.value;

    late final Map<String, dynamic> formData = {
      'name': customer?.name ?? '',
      'farmName': customer?.farmName ?? '',
      'address': customer?.address ?? '',
      'phoneNo': customer?.phoneNumber ?? '',
      'whatsappNo': customer?.whatsappNumber ?? '',
      'email': customer?.email ?? '',
      'account': customer?.accountNumber?.toString() ?? '',
      'ifsc': customer?.ifscCode ?? '',
      'upi': customer?.upiId ?? '',
      'gst': customer?.gstNumber ?? '',
      'pan': customer?.panNumber ?? '',
      'type': customer?.type ?? '',
    };

    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(width: 60, height: 5, color: TColors.white30),
          const SizedBox(height: TSizes.spaceBtwSections),
          _buildSectionHeader("Status", const Tag(title: "Pending")),
          const SizedBox(height: TSizes.spaceBtwSections),
          _buildSectionHeader("Personal"),
          const SizedBox(height: TSizes.spaceBtwItems),
          _buildPersonalDetails(formData),
          const SizedBox(height: TSizes.spaceBtwSections),
          _buildSectionHeader("Billing"),
          const SizedBox(height: TSizes.spaceBtwItems),
          _buildBillingDetails(formData),
          const SizedBox(height: TSizes.spaceBtwSections),
          _buildSectionHeader("Business"),
          const SizedBox(height: TSizes.spaceBtwItems),
          _buildBusinessDetails(formData),
          const SizedBox(height: TSizes.spaceBtwSections),
          _buildFormButtons(context, _formKey, formData, customerState),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title, [Widget? trailing]) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTitle(title),
        if (trailing != null) trailing,
      ],
    );
  }

  Widget _buildPersonalDetails(Map<String, dynamic> formData) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: InputField(
                iconPath: 'assets/icons/Iconsax/twotone/user.svg',
                labelText: 'Name',
                initialValue: formData['name'],
                hintText: 'Enter name',
                onSaved: (value) => formData['name'] = value ?? '',
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields),
            Expanded(
              child: InputField(
                iconPath: 'assets/icons/Iconsax/twotone/shop.svg',
                labelText: 'Farm Name',
                initialValue: formData['farmName'],
                hintText: 'Enter farm name',
                onSaved: (value) => formData['farmName'] = value ?? '',
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields),
            Expanded(
              child: InputField(
                iconPath: 'assets/icons/Iconsax/twotone/location.svg',
                labelText: 'Address',
                initialValue: formData['address'],
                hintText: 'Enter address',
                onSaved: (value) => formData['address'] = value ?? '',
              ),
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Row(
          children: [
            Expanded(
              child: InputField(
                iconPath: 'assets/icons/Iconsax/twotone/call.svg',
                labelText: 'Phone No.',
                initialValue: formData['phoneNo'],
                hintText: 'Enter phone number',
                onSaved: (value) => formData['phoneNo'] = value ?? '',
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields),
            Expanded(
              child: InputField(
                iconPath: 'assets/icons/Iconsax/twotone/whatsapp.svg',
                labelText: 'Whatsapp No.',
                initialValue: formData['whatsappNo'],
                hintText: 'Enter Whatsapp number',
                onSaved: (value) => formData['whatsappNo'] = value ?? '',
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields),
            Expanded(
              child: InputField(
                iconPath: 'assets/icons/Iconsax/twotone/sms.svg',
                labelText: 'Email',
                initialValue: formData['email'],
                hintText: 'Enter email',
                onSaved: (value) => formData['email'] = value ?? '',
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBillingDetails(Map<String, dynamic> formData) {
    return Row(
      children: [
        Expanded(
          child: InputField(
            labelText: 'Account',
            initialValue: formData['account'].toString(),
            hintText: 'Enter account number',
            onSaved: (value) => formData['account'] = value ?? '',
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwInputFields),
        Expanded(
          child: InputField(
            labelText: 'IFSC',
            initialValue: formData['ifsc'],
            hintText: 'Enter IFSC code',
            onSaved: (value) => formData['ifsc'] = value ?? '',
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwInputFields),
        Expanded(
          child: InputField(
            labelText: 'UPI',
            initialValue: formData['upi'],
            hintText: 'Enter UPI ID',
            onSaved: (value) => formData['upi'] = value ?? '',
          ),
        ),
      ],
    );
  }

  Widget _buildBusinessDetails(Map<String, dynamic> formData) {
    return Row(
      children: [
        Expanded(
          child: InputField(
            labelText: 'GST',
            initialValue: formData['gst'],
            hintText: 'Enter GST number',
            onSaved: (value) => formData['gst'] = value ?? '',
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwInputFields),
        Expanded(
          child: InputField(
            labelText: 'PAN',
            hintText: 'Enter PAN number',
            initialValue: formData['pan'],
            onSaved: (value) => formData['pan'] = value ?? '',
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwInputFields),
        Expanded(
          child: InputField(
            labelText: 'Type',
            initialValue: formData['type'],
            hintText: 'Enter business type',
            onSaved: (value) => formData['type'] = value ?? '',
          ),
        ),
      ],
    );
  }

  Widget _buildFormButtons(BuildContext context, GlobalKey<FormState> formKey,
      Map<String, dynamic> formData, CustomerState customerState) {
    return Row(
      children: [
        Expanded(
          child: customButton(
            width: double.infinity,
            height: TSizes.buttonSize,
            buttonRadius: TSizes.buttonRadius,
            boxBorderColor: TColors.white30,
            color: TColors.primary,
            wedge: const Center(child: Text('Save', style: _buttonTextStyle)),
            onClick: () {
              if (formKey.currentState?.validate() ?? false) {
                formKey.currentState?.save();
                _saveCustomer(formData, customerState);
                Navigator.pop(context); // Close the bottom sheet
              }
            },
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Expanded(
          child: customButton(
            width: double.infinity,
            height: TSizes.buttonSize,
            buttonRadius: TSizes.buttonRadius,
            boxBorderColor: TColors.white30,
            color: TColors.primary,
            wedge: const Center(child: Text('Delete', style: _buttonTextStyle)),
            onClick: () {
              try {
                if (customerState.currentCustomer.value != null) {
                  db.delete<Customer>(customerState.currentCustomer.value!);
                  customerState
                      .deleteCustomer(customerState.currentCustomer.value!);
                  Navigator.pop(context);
                  formKey.currentState?.reset();
                }
              } catch (e) {
                print(e);
              }
            },
          ),
        ),
      ],
    );
  }

  static const TextStyle _buttonTextStyle = TextStyle(
    color: TColors.secondary,
    fontSize: TSizes.fontSizeSm,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
  );

  void _saveCustomer(
      Map<String, dynamic> formData, CustomerState customerState) {
    try {
      final int? accountNumber = formData['account'].isNotEmpty
          ? int.tryParse(formData['account']!)
          : null;
      final id = customerState.currentCustomer.value?.id ?? ObjectId();
      final customer = Customer(
        id,
        formData['name']!,
        formData['farmName']!,
        formData['address']!,
        formData['phoneNo']!,
        formData['type']!,
        whatsappNumber: formData['whatsappNo'],
        accountNumber: accountNumber,
        email: formData['email'],
        gstNumber: formData['gst'],
        ifscCode: formData['ifsc'],
        panNumber: formData['pan'],
        upiId: formData['upi'],
      );
      db.insertOrUpdate(customer);
      customerState.upsertCustomer(customer);
    } catch (e) {
      print('Error saving customer: $e');
    }
  }
}
