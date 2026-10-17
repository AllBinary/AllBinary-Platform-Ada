--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body views.generic_Id.inventory.InventorySearchLoopInfo_Package is

   procedure Initialize_Fields (This : in out InventorySearchLoopInfo'Class) is
   begin
      null;
      This.lastPage := -(1);
      This.currentPage := -(1);
      This.numberOfResultsOnCurrentPage := 0;
      This.numberOfResults := 0;
      This.CURRENT := To_Unbounded_String ("current: ");
      This.NUM := To_Unbounded_String (" num: ");
      This.LAST := To_Unbounded_String (" last: ");
   end Initialize_Fields;

   procedure Initialize (This : in out InventorySearchLoopInfo'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return InventorySearchLoopInfo_Access is
      This : constant InventorySearchLoopInfo_Access := new InventorySearchLoopInfo;
   begin
      InventorySearchLoopInfo_Package.Initialize (This.all);
      return This;
   end Create;


   function toString (This : in out InventorySearchLoopInfo) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.CURRENT);
        stringBuffer.appendint (This.currentPage);
        stringBuffer.append (This.NUM);
        stringBuffer.appendint (This.numberOfResults);
        stringBuffer.append (This.LAST);
        stringBuffer.appendint (This.lastPage);
        return stringBuffer.toString;
   end toString;

end views.generic_Id.inventory.InventorySearchLoopInfo_Package;


