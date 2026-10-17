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


package body org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package is

   procedure Initialize_Fields (This : in out XmlOptionItemData'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out XmlOptionItemData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return XmlOptionItemData_Access is
      This : constant XmlOptionItemData_Access := new XmlOptionItemData;
   begin
      XmlOptionItemData_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   XML_FILE_STATUS := To_Unbounded_String ("XMLOPTIONITEM_XML_FILE_STATUS");
   OPTION_XML_FILE := To_Unbounded_String ("XMLOPTIONITEM_OPTION_XML_FILE");

end org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package;


