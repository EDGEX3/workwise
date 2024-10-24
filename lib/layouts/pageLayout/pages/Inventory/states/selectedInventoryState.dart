import 'package:get/get.dart';
import 'package:workwise/layouts/pageLayout/pages/Inventory/model/inventory.dart';


class InventoryState extends GetxController {
  // Reactive variable for the currently selected inventory item
  Rxn<Inventory> currentInventory = Rxn<Inventory>();

  // Reactive list for managing the inventory items
  RxList<Inventory> inventoryList = <Inventory>[].obs;

  // Set the currently selected inventory item
  void setCurrentInventory(Inventory inventory) {
    currentInventory.value = inventory;
  }

  // Set or update the inventory list
  void setInventoryList(List<Inventory> inventories) {
    inventoryList.assignAll(inventories);
  }

  // Add or update an inventory item in the list
  void upsertInventory(Inventory inventory) {
    int index = inventoryList.indexWhere((item) => item.id == inventory.id);
    if (index != -1) {
      // Update existing inventory item
      inventoryList[index] = inventory;
    } else {
      // Add new inventory item
      inventoryList.add(inventory);
    }
    inventoryList.refresh();
  }

  // Delete an inventory item from the list
  void deleteInventory(Inventory inventory) {
    inventoryList.remove(inventory);
    inventoryList.refresh();
  }

  // Clear the current inventory item
  void clearCurrentInventory() {
    currentInventory.value = null;
  }
}
