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

limited with org.allbinary.business.user.NewUserFactory_Package;
package org.allbinary.business.user.NewUserFactory_Package_References is
   type NewUserFactory_Access is access all org.allbinary.business.user.NewUserFactory_Package.NewUserFactory'Class;
   type NewUserFactory_Access_Array is array (Natural range <>) of NewUserFactory_Access;
   type NewUserFactory_Access_Array_Access is access all NewUserFactory_Access_Array;
   type NewUserFactory_Access_Array_Access_Array is array (Natural range <>) of NewUserFactory_Access_Array_Access;
   type NewUserFactory_Access_Array_Access_Array_Access is access all NewUserFactory_Access_Array_Access_Array;
end org.allbinary.business.user.NewUserFactory_Package_References;

with org.allbinary.business.user.NewUserFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.UserInterface_Package_References;

package org.allbinary.business.user.NewUserFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype NewUserFactory_Access is org.allbinary.business.user.NewUserFactory_Package_References.NewUserFactory_Access;
   function "=" (Left, Right : NewUserFactory_Access) return Boolean renames org.allbinary.business.user.NewUserFactory_Package_References."=";
   subtype NewUserFactory_Access_Array is org.allbinary.business.user.NewUserFactory_Package_References.NewUserFactory_Access_Array;
   function "=" (Left, Right : NewUserFactory_Access_Array) return Boolean renames org.allbinary.business.user.NewUserFactory_Package_References."=";
   subtype NewUserFactory_Access_Array_Access is org.allbinary.business.user.NewUserFactory_Package_References.NewUserFactory_Access_Array_Access;
   function "=" (Left, Right : NewUserFactory_Access_Array_Access) return Boolean renames org.allbinary.business.user.NewUserFactory_Package_References."=";
   subtype NewUserFactory_Access_Array_Access_Array is org.allbinary.business.user.NewUserFactory_Package_References.NewUserFactory_Access_Array_Access_Array;
   function "=" (Left, Right : NewUserFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.NewUserFactory_Package_References."=";
   subtype NewUserFactory_Access_Array_Access_Array_Access is org.allbinary.business.user.NewUserFactory_Package_References.NewUserFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NewUserFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.NewUserFactory_Package_References."=";

   type NewUserFactory is new Java_Object with null record;

   procedure Initialize (This : in out NewUserFactory'Class);
   function Create return NewUserFactory_Access;
   function getInstance return UserInterface_Access;
   function getInstance (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return UserInterface_Access;
   procedure getInstance (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function getInstance (httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class) return UserInterface_Access;
   procedure getInstance (httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class);

end org.allbinary.business.user.NewUserFactory_Package;


