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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.allbinary.business.user.username.UserName_Package; use org.allbinary.business.user.username.UserName_Package;
with org.allbinary.data.tables.user.UserEntityFactory_Package; use org.allbinary.data.tables.user.UserEntityFactory_Package;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.generic_Id.user.UserView_Package; use views.generic_Id.user.UserView_Package;

package views.generic_Id.user.DeleteValidationUserView_Package is

   package UserName_Package renames Standard.org.allbinary.business.user.username.UserName_Package;
   package UserEntityFactory_Package renames Standard.org.allbinary.data.tables.user.UserEntityFactory_Package;
   package RequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.RequestParams_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type DeleteValidationUserView is tagged;
   type DeleteValidationUserView_Access is access all DeleteValidationUserView'Class;
   type DeleteValidationUserView_Access_Array is array (Natural range <>) of DeleteValidationUserView_Access;
   type DeleteValidationUserView_Access_Array_Access is access all DeleteValidationUserView_Access_Array;

   type DeleteValidationUserView is new UserView and ValidationComponentInterface with record
      logUtil : LogUtil_Access;
      userName : Unbounded_String;
   end record;

   procedure Initialize (This : in out DeleteValidationUserView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return DeleteValidationUserView_Access;
   function isValid (This : in out DeleteValidationUserView) return Boolean;
   function validationInfo (This : in out DeleteValidationUserView) return Unbounded_String;
   function toValidationInfoDoc (This : in out DeleteValidationUserView) return Document_Access;
   function toValidationInfoNode (This : in out DeleteValidationUserView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out DeleteValidationUserView; document : Document_Access);

end views.generic_Id.user.DeleteValidationUserView_Package;


