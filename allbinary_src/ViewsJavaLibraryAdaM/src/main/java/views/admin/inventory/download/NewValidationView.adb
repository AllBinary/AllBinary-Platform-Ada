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


with org.allbinary.business.user.commerce.inventory.item.BasicItem_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItem_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package; use org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body views.admin.inventory.download.NewValidationView_Package is

   package BasicItem_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItem_Package;
   package ItemInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
   package DownloadableItem_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out NewValidationView'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NewValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        DownloadableInventoryItemView_Package.Initialize (This, transformInfoInterface, StringUtil_Package.getInstance.EMPTY_STRING);
        This.itemInterface := ItemInterface_Access (BasicItem_Package.Create);
        This.downloadableItem := DownloadableItem_Package.Create (This.itemInterface.getId);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return NewValidationView_Access is
      This : constant NewValidationView_Access := new NewValidationView;
   begin
      NewValidationView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function isValid (This : in out NewValidationView) return Boolean is
   begin
        begin
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            return False;
                end;
        end;
   end isValid;

   function toValidationInfoDoc (This : in out NewValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out NewValidationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   function validationInfo (This : in out NewValidationView) return Unbounded_String is
   begin
        return To_Unbounded_String ("Error Creating New Downloadable Item");
   end validationInfo;

   procedure toValidationInfoNode (This : in out NewValidationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := NewValidationView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.admin.inventory.download.NewValidationView_Package;


