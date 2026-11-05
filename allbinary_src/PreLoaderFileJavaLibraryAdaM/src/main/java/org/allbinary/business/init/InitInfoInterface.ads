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

limited with org.allbinary.business.init.InitInfoInterface_Package;
package org.allbinary.business.init.InitInfoInterface_Package_References is
   type InitInfoInterface_Access is access all org.allbinary.business.init.InitInfoInterface_Package.InitInfoInterface'Class;
   type InitInfoInterface_Access_Array is array (Natural range <>) of InitInfoInterface_Access;
   type InitInfoInterface_Access_Array_Access is access all InitInfoInterface_Access_Array;
   type InitInfoInterface_Access_Array_Access_Array is array (Natural range <>) of InitInfoInterface_Access_Array_Access;
   type InitInfoInterface_Access_Array_Access_Array_Access is access all InitInfoInterface_Access_Array_Access_Array;
end org.allbinary.business.init.InitInfoInterface_Package_References;

with org.allbinary.business.init.InitInfoInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;

package org.allbinary.business.init.InitInfoInterface_Package is

   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package Reference_Types is
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   use type AbPath_Access;
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   use type AbPath_Access_Array;
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   use type AbPath_Access_Array_Access;
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   use type AbPath_Access_Array_Access_Array;
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   use type AbPath_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type InitInfoInterface is interface;
   subtype InitInfoInterface_Access is org.allbinary.business.init.InitInfoInterface_Package_References.InitInfoInterface_Access;
   function "=" (Left, Right : InitInfoInterface_Access) return Boolean renames org.allbinary.business.init.InitInfoInterface_Package_References."=";
   subtype InitInfoInterface_Access_Array is org.allbinary.business.init.InitInfoInterface_Package_References.InitInfoInterface_Access_Array;
   function "=" (Left, Right : InitInfoInterface_Access_Array) return Boolean renames org.allbinary.business.init.InitInfoInterface_Package_References."=";
   subtype InitInfoInterface_Access_Array_Access is org.allbinary.business.init.InitInfoInterface_Package_References.InitInfoInterface_Access_Array_Access;
   function "=" (Left, Right : InitInfoInterface_Access_Array_Access) return Boolean renames org.allbinary.business.init.InitInfoInterface_Package_References."=";
   subtype InitInfoInterface_Access_Array_Access_Array is org.allbinary.business.init.InitInfoInterface_Package_References.InitInfoInterface_Access_Array_Access_Array;
   function "=" (Left, Right : InitInfoInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.init.InitInfoInterface_Package_References."=";
   subtype InitInfoInterface_Access_Array_Access_Array_Access is org.allbinary.business.init.InitInfoInterface_Package_References.InitInfoInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InitInfoInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.init.InitInfoInterface_Package_References."=";
   function Java_Object_Access_From_InitInfoInterface (Value : InitInfoInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function isTesting (This : in out InitInfoInterface) return Boolean is abstract;
   function getTesting (This : in out InitInfoInterface) return Unbounded_String is abstract;
   function getTestHtmlPath (This : in out InitInfoInterface) return Unbounded_String is abstract;
   function getMainPath (This : in out InitInfoInterface) return Unbounded_String is abstract;
   procedure setTesting (This : in out InitInfoInterface; value : Unbounded_String) is abstract;
   procedure setTestHtmlPath (This : in out InitInfoInterface; value_Param : access AbPath_Package.AbPath'Class) is abstract;
   procedure setMainPath (This : in out InitInfoInterface; value_Param : access AbPath_Package.AbPath'Class) is abstract;
   function isTestingValid (This : in out InitInfoInterface; testing : Unbounded_String) return Boolean is abstract;
   procedure isTestingValid (This : in out InitInfoInterface; testing : Unbounded_String) is abstract;
   function isTestHtmlPathValid (This : in out InitInfoInterface; value_Param : access AbPath_Package.AbPath'Class) return Boolean is abstract;
   procedure isTestHtmlPathValid (This : in out InitInfoInterface; value_Param : access AbPath_Package.AbPath'Class) is abstract;
   function isMainPathValid (This : in out InitInfoInterface; value_Param : access AbPath_Package.AbPath'Class) return Boolean is abstract;
   procedure isMainPathValid (This : in out InitInfoInterface; value_Param : access AbPath_Package.AbPath'Class) is abstract;

end org.allbinary.business.init.InitInfoInterface_Package;


