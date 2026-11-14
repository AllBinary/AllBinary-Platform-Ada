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
limited with views.admin.user.UserView_Package;
package views.admin.user.UserView_Package_References is
   type UserView_Access is access all views.admin.user.UserView_Package.UserView'Class;
   type UserView_Access_Array is array (Natural range <>) of UserView_Access;
   type UserView_Access_Array_Access is access all UserView_Access_Array;
   type UserView_Access_Array_Access_Array is array (Natural range <>) of UserView_Access_Array_Access;
   type UserView_Access_Array_Access_Array_Access is access all UserView_Access_Array_Access_Array;
   type UserView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserView_Access_Array_Access;
   end record;
   function Java_Box (Value : UserView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserView_Access_Array_Access is (if Value /= null and then Value.all in UserView_Access_Array_Object'Class then UserView_Access_Array_Object'Class (Value.all).Value else null);
   type UserView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UserView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UserView_Access_Array_Access_Array_Object'Class then UserView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end views.admin.user.UserView_Package_References;

with views.admin.user.UserView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.UserInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
with views.business.context.HttpContextView_Package; use views.business.context.HttpContextView_Package;

package views.admin.user.UserView_Package is

   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package HttpContextView_Package renames Standard.views.business.context.HttpContextView_Package;
   package Reference_Types is
   subtype UserInterface_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access;
   use type UserInterface_Access;
   subtype UserInterface_Access_Array is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array;
   use type UserInterface_Access_Array;
   subtype UserInterface_Access_Array_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access;
   use type UserInterface_Access_Array_Access;
   subtype UserInterface_Access_Array_Access_Array is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access_Array;
   use type UserInterface_Access_Array_Access_Array;
   subtype UserInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access_Array_Access;
   use type UserInterface_Access_Array_Access_Array_Access;
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
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   use type TransformInfoInterface_Access;
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   use type TransformInfoInterface_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access;
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   use type TransformInfoInterface_Access_Array_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype UserView_Access is views.admin.user.UserView_Package_References.UserView_Access;
   function "=" (Left, Right : UserView_Access) return Boolean renames views.admin.user.UserView_Package_References."=";
   subtype UserView_Access_Array is views.admin.user.UserView_Package_References.UserView_Access_Array;
   function "=" (Left, Right : UserView_Access_Array) return Boolean renames views.admin.user.UserView_Package_References."=";
   subtype UserView_Access_Array_Access is views.admin.user.UserView_Package_References.UserView_Access_Array_Access;
   function "=" (Left, Right : UserView_Access_Array_Access) return Boolean renames views.admin.user.UserView_Package_References."=";
   function Java_Box (Value : UserView_Access_Array_Access) return Java_Object_Access renames views.admin.user.UserView_Package_References.Java_Box;
   function Java_Unbox_UserView_Access_Array (Value : access Java_Object'Class) return UserView_Access_Array_Access renames views.admin.user.UserView_Package_References.Java_Unbox_UserView_Access_Array;
   subtype UserView_Access_Array_Access_Array is views.admin.user.UserView_Package_References.UserView_Access_Array_Access_Array;
   function "=" (Left, Right : UserView_Access_Array_Access_Array) return Boolean renames views.admin.user.UserView_Package_References."=";
   subtype UserView_Access_Array_Access_Array_Access is views.admin.user.UserView_Package_References.UserView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserView_Access_Array_Access_Array_Access) return Boolean renames views.admin.user.UserView_Package_References."=";
   function Java_Box (Value : UserView_Access_Array_Access_Array_Access) return Java_Object_Access renames views.admin.user.UserView_Package_References.Java_Box;
   function Java_Unbox_UserView_Access_Array_Access_Array (Value : access Java_Object'Class) return UserView_Access_Array_Access_Array_Access renames views.admin.user.UserView_Package_References.Java_Unbox_UserView_Access_Array_Access_Array;

   type UserView is new HttpContextView with record
      UserView_Field_logUtil : LogUtil_Access;
      user : UserInterface_Access;
   end record;

   procedure Initialize (This : in out UserView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return UserView_Access;
   procedure addDomNodeInterfaces (This : in out UserView);
   function view (This : in out UserView) return Unbounded_String;

end views.admin.user.UserView_Package;


