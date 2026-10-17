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
with views.business.context.HttpContextView_Package; use views.business.context.HttpContextView_Package;

package views.admin.user.AddValidationUserView_Package is

   package NewUserFactory_Package renames Standard.org.allbinary.business.user.NewUserFactory_Package;
   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;
   package UserEntityFactory_Package renames Standard.org.allbinary.data.tables.user.UserEntityFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package HttpContextView_Package renames Standard.views.business.context.HttpContextView_Package;

   type AddValidationUserView is tagged;
   type AddValidationUserView_Access is access all AddValidationUserView'Class;
   type AddValidationUserView_Access_Array is array (Natural range <>) of AddValidationUserView_Access;
   type AddValidationUserView_Access_Array_Access is access all AddValidationUserView_Access_Array;

   type AddValidationUserView is new HttpContextView and ValidationComponentInterface with record
      logUtil : LogUtil_Access;
      user : UserInterface_Access;
   end record;

   procedure Initialize (This : in out AddValidationUserView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return AddValidationUserView_Access;
   function isValid (This : in out AddValidationUserView) return Boolean;
   procedure isValid (This : in out AddValidationUserView);
   function validationInfo (This : in out AddValidationUserView) return Unbounded_String;
   procedure validationInfo (This : in out AddValidationUserView);
   function toValidationInfoDoc (This : in out AddValidationUserView) return Document_Access;
   procedure toValidationInfoDoc (This : in out AddValidationUserView);
   function toValidationInfoNode (This : in out AddValidationUserView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out AddValidationUserView; document : Document_Access);
   function view (This : in out AddValidationUserView) return Unbounded_String;
   procedure view (This : in out AddValidationUserView);

end views.admin.user.AddValidationUserView_Package;


