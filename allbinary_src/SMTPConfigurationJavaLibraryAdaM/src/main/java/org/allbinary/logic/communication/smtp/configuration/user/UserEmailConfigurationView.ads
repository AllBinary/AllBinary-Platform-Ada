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

with AllBinary_Java;
limited with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package;
package org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package_References is
   type UserEmailConfigurationView_Access is access all org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package.UserEmailConfigurationView'Class;
   type UserEmailConfigurationView_Access_Array is array (Natural range <>) of UserEmailConfigurationView_Access;
   type UserEmailConfigurationView_Access_Array_Access is access all UserEmailConfigurationView_Access_Array;
   type UserEmailConfigurationView_Access_Array_Access_Array is array (Natural range <>) of UserEmailConfigurationView_Access_Array_Access;
   type UserEmailConfigurationView_Access_Array_Access_Array_Access is access all UserEmailConfigurationView_Access_Array_Access_Array;
   type UserEmailConfigurationView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserEmailConfigurationView_Access_Array_Access;
   end record;
   function Java_Box (Value : UserEmailConfigurationView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserEmailConfigurationView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserEmailConfigurationView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserEmailConfigurationView_Access_Array_Access is (if Value /= null and then Value.all in UserEmailConfigurationView_Access_Array_Object'Class then UserEmailConfigurationView_Access_Array_Object'Class (Value.all).Value else null);
   type UserEmailConfigurationView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserEmailConfigurationView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UserEmailConfigurationView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserEmailConfigurationView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserEmailConfigurationView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserEmailConfigurationView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UserEmailConfigurationView_Access_Array_Access_Array_Object'Class then UserEmailConfigurationView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package_References;

with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References;

package org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   subtype UserEmailConfigurationInterface_Access is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References.UserEmailConfigurationInterface_Access;
   use type UserEmailConfigurationInterface_Access;
   subtype UserEmailConfigurationInterface_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References.UserEmailConfigurationInterface_Access_Array;
   use type UserEmailConfigurationInterface_Access_Array;
   subtype UserEmailConfigurationInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References.UserEmailConfigurationInterface_Access_Array_Access;
   use type UserEmailConfigurationInterface_Access_Array_Access;
   subtype UserEmailConfigurationInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References.UserEmailConfigurationInterface_Access_Array_Access_Array;
   use type UserEmailConfigurationInterface_Access_Array_Access_Array;
   subtype UserEmailConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References.UserEmailConfigurationInterface_Access_Array_Access_Array_Access;
   use type UserEmailConfigurationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype UserEmailConfigurationView_Access is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package_References.UserEmailConfigurationView_Access;
   function "=" (Left, Right : UserEmailConfigurationView_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package_References."=";
   subtype UserEmailConfigurationView_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package_References.UserEmailConfigurationView_Access_Array;
   function "=" (Left, Right : UserEmailConfigurationView_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package_References."=";
   subtype UserEmailConfigurationView_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package_References.UserEmailConfigurationView_Access_Array_Access;
   function "=" (Left, Right : UserEmailConfigurationView_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package_References."=";
   function Java_Box (Value : UserEmailConfigurationView_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package_References.Java_Box;
   function Java_Unbox_UserEmailConfigurationView_Access_Array (Value : access Java_Object'Class) return UserEmailConfigurationView_Access_Array_Access renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package_References.Java_Unbox_UserEmailConfigurationView_Access_Array;
   subtype UserEmailConfigurationView_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package_References.UserEmailConfigurationView_Access_Array_Access_Array;
   function "=" (Left, Right : UserEmailConfigurationView_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package_References."=";
   subtype UserEmailConfigurationView_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package_References.UserEmailConfigurationView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEmailConfigurationView_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package_References."=";
   function Java_Box (Value : UserEmailConfigurationView_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package_References.Java_Box;
   function Java_Unbox_UserEmailConfigurationView_Access_Array_Access_Array (Value : access Java_Object'Class) return UserEmailConfigurationView_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package_References.Java_Unbox_UserEmailConfigurationView_Access_Array_Access_Array;

   type UserEmailConfigurationView is new Java_Object and DomNodeInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      userEmailConfigurationInterface : UserEmailConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out UserEmailConfigurationView'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return UserEmailConfigurationView_Access;
   procedure Initialize (This : in out UserEmailConfigurationView'Class; userEmailConfigurationInterface_Param : access UserEmailConfigurationInterface_Package.UserEmailConfigurationInterface'Class);
   function Create (userEmailConfigurationInterface_Param : access UserEmailConfigurationInterface_Package.UserEmailConfigurationInterface'Class) return UserEmailConfigurationView_Access;
   function getEmailConfigurationInterface (This : in out UserEmailConfigurationView) return UserEmailConfigurationInterface_Access;
   function toXmlNode (This : in out UserEmailConfigurationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out UserEmailConfigurationView; document_Param : access Document_Package.Document'Class);

end org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package;


