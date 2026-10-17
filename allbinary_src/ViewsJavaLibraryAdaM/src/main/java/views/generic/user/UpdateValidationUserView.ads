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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.business.user.NewUserFactory_Package; use org.allbinary.business.user.NewUserFactory_Package;
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.data.tables.user.UserEntityFactory_Package; use org.allbinary.data.tables.user.UserEntityFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.generic_Id.user.UpdateValidationUserView_Package is

   package NewUserFactory_Package renames org.allbinary.business.user.NewUserFactory_Package;
   package UserInterface_Package renames org.allbinary.business.user.UserInterface_Package;
   package UserEntityFactory_Package renames org.allbinary.data.tables.user.UserEntityFactory_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type UpdateValidationUserView is tagged;
   type UpdateValidationUserView_Access is access all UpdateValidationUserView'Class;
   type UpdateValidationUserView_Access_Array is array (Natural range <>) of UpdateValidationUserView_Access;
   type UpdateValidationUserView_Access_Array_Access is access all UpdateValidationUserView_Access_Array;

   type UpdateValidationUserView is new HttpStoreComponentView and ValidationComponentInterface with record
      logUtil : LogUtil_Access;
      user : UserInterface_Access;
   end record;

   procedure Initialize (This : in out UpdateValidationUserView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return UpdateValidationUserView_Access;
   function isValid (This : in out UpdateValidationUserView) return Boolean;
   procedure isValid (This : in out UpdateValidationUserView);
   function validationInfo (This : in out UpdateValidationUserView) return Unbounded_String;
   procedure validationInfo (This : in out UpdateValidationUserView);
   function toValidationInfoDoc (This : in out UpdateValidationUserView) return Document_Access;
   procedure toValidationInfoDoc (This : in out UpdateValidationUserView);
   function toValidationInfoNode (This : in out UpdateValidationUserView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out UpdateValidationUserView; document : Document_Access);
   function view (This : in out UpdateValidationUserView) return Unbounded_String;
   procedure view (This : in out UpdateValidationUserView);

end views.generic_Id.user.UpdateValidationUserView_Package;


