import 'package:get/get.dart';
import 'package:workwise/layouts/pageLayout/pages/Customers/model/customer.dart';

class CustomerState extends GetxController {
  Rxn<Customer> currentCustomer = Rxn<Customer>();
  RxList<Customer> customerList = <Customer>[].obs;

  void setCurrentCustomer(Customer customer) {
    currentCustomer.value = customer;
  }

  void setCustomerList(List<Customer> customers) {
    customerList.assignAll(customers);
  }

  void upsertCustomer(Customer customer) {
    int index = customerList.indexWhere((c) => c.id == customer.id);
    if (index != -1) {
      customerList[index] = customer;
    } else {
      customerList.add(customer);
    }
    customerList.refresh();
  }

  void deleteCustomer(Customer customer) {
    customerList.remove(customer);
    customerList.refresh();
  }

  void clearCurrentCustomer() {
    currentCustomer.value = null;
  }
}
