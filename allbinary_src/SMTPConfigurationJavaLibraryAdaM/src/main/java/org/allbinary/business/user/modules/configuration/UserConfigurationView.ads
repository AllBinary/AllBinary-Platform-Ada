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
limited with org.allbinary.business.user.modules.configuration.UserConfigurationView_Package;
package org.allbinary.business.user.modules.configuration.UserConfigurationView_Package_References is
   type UserConfigurationView_Access is access all org.allbinary.business.user.modules.configuration.UserConfigurationView_Package.UserConfigurationView'Class;
   type UserConfigurationView_Access_Array is array (Natural range <>) of UserConfigurationView_Access;
   type UserConfigurationView_Access_Array_Access is access all UserConfigurationView_Access_Array;
   type UserConfigurationView_Access_Array_Access_Array is array (Natural range <>) of UserConfigurationView_Access_Array_Access;
   type UserConfigurationView_Access_Array_Access_Array_Access is access all UserConfigurationView_Access_Array_Access_Array;
   type UserConfigurationView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserConfigurationView_Access_Array_Access;
   end record;
   function Java_Box (Value : UserConfigurationView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserConfigurationView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserConfigurationView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserConfigurationView_Access_Array_Access is (if Value /= null and then Value.all in UserConfigurationView_Access_Array_Object'Class then UserConfigurationView_Access_Array_Object'Class (Value.all).Value else null);
   type UserConfigurationView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserConfigurationView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UserConfigurationView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserConfigurationView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserConfigurationView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserConfigurationView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UserConfigurationView_Access_Array_Access_Array_Object'Class then UserConfigurationView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.modules.configuration.UserConfigurationView_Package_References;

with org.allbinary.business.user.modules.configuration.UserConfigurationView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References;

package org.allbinary.business.user.modules.configuration.UserConfigurationView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
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
   subtype UserConfigurationInterface_Access is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access;
   use type UserConfigurationInterface_Access;
   subtype UserConfigurationInterface_Access_Array is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array;
   use type UserConfigurationInterface_Access_Array;
   subtype UserConfigurationInterface_Access_Array_Access is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array_Access;
   use type UserConfigurationInterface_Access_Array_Access;
   subtype UserConfigurationInterface_Access_Array_Access_Array is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array_Access_Array;
   use type UserConfigurationInterface_Access_Array_Access_Array;
   subtype UserConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array_Access_Array_Access;
   use type UserConfigurationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype UserConfigurationView_Access is org.allbinary.business.user.modules.configuration.UserConfigurationView_Package_References.UserConfigurationView_Access;
   function "=" (Left, Right : UserConfigurationView_Access) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationView_Package_References."=";
   subtype UserConfigurationView_Access_Array is org.allbinary.business.user.modules.configuration.UserConfigurationView_Package_References.UserConfigurationView_Access_Array;
   function "=" (Left, Right : UserConfigurationView_Access_Array) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationView_Package_References."=";
   subtype UserConfigurationView_Access_Array_Access is org.allbinary.business.user.modules.configuration.UserConfigurationView_Package_References.UserConfigurationView_Access_Array_Access;
   function "=" (Left, Right : UserConfigurationView_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationView_Package_References."=";
   function Java_Box (Value : UserConfigurationView_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.modules.configuration.UserConfigurationView_Package_References.Java_Box;
   function Java_Unbox_UserConfigurationView_Access_Array (Value : access Java_Object'Class) return UserConfigurationView_Access_Array_Access renames org.allbinary.business.user.modules.configuration.UserConfigurationView_Package_References.Java_Unbox_UserConfigurationView_Access_Array;
   subtype UserConfigurationView_Access_Array_Access_Array is org.allbinary.business.user.modules.configuration.UserConfigurationView_Package_References.UserConfigurationView_Access_Array_Access_Array;
   function "=" (Left, Right : UserConfigurationView_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationView_Package_References."=";
   subtype UserConfigurationView_Access_Array_Access_Array_Access is org.allbinary.business.user.modules.configuration.UserConfigurationView_Package_References.UserConfigurationView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserConfigurationView_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationView_Package_References."=";
   function Java_Box (Value : UserConfigurationView_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.modules.configuration.UserConfigurationView_Package_References.Java_Box;
   function Java_Unbox_UserConfigurationView_Access_Array_Access_Array (Value : access Java_Object'Class) return UserConfigurationView_Access_Array_Access_Array_Access renames org.allbinary.business.user.modules.configuration.UserConfigurationView_Package_References.Java_Unbox_UserConfigurationView_Access_Array_Access_Array;

   type UserConfigurationView is new Java_Object and DomNodeInterface with record
      userConfigurationInterface : UserConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out UserConfigurationView'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return UserConfigurationView_Access;
   procedure Initialize (This : in out UserConfigurationView'Class; userConfigurationInterface_Param : access UserConfigurationInterface_Package.UserConfigurationInterface'Class);
   function Create (userConfigurationInterface_Param : access UserConfigurationInterface_Package.UserConfigurationInterface'Class) return UserConfigurationView_Access;
   function getUserConfigurationInterface (This : in out UserConfigurationView) return UserConfigurationInterface_Access;
   function toXmlNode (This : in out UserConfigurationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out UserConfigurationView; document_Param : access Document_Package.Document'Class);

end org.allbinary.business.user.modules.configuration.UserConfigurationView_Package;


