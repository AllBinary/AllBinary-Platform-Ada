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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.generic_Id.user.UserView_Package; use views.generic_Id.user.UserView_Package;

package views.generic_Id.user.NewUserView_Package is

   package NewUserFactory_Package renames org.allbinary.business.user.NewUserFactory_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type NewUserView is tagged;
   type NewUserView_Access is access all NewUserView'Class;
   type NewUserView_Access_Array is array (Natural range <>) of NewUserView_Access;
   type NewUserView_Access_Array_Access is access all NewUserView_Access_Array;

   type NewUserView is new UserView and ValidationComponentInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out NewUserView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return NewUserView_Access;
   function isValid (This : in out NewUserView) return Boolean;
   procedure isValid (This : in out NewUserView);
   function validationInfo (This : in out NewUserView) return Unbounded_String;
   procedure validationInfo (This : in out NewUserView);
   function toValidationInfoDoc (This : in out NewUserView) return Document_Access;
   procedure toValidationInfoDoc (This : in out NewUserView);
   function toValidationInfoNode (This : in out NewUserView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out NewUserView; document : Document_Access);

end views.generic_Id.user.NewUserView_Package;


