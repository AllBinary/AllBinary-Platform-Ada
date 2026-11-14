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
limited with org.allbinary.business.init.InitInfo_Package;
package org.allbinary.business.init.InitInfo_Package_References is
   type InitInfo_Access is access all org.allbinary.business.init.InitInfo_Package.InitInfo'Class;
   type InitInfo_Access_Array is array (Natural range <>) of InitInfo_Access;
   type InitInfo_Access_Array_Access is access all InitInfo_Access_Array;
   type InitInfo_Access_Array_Access_Array is array (Natural range <>) of InitInfo_Access_Array_Access;
   type InitInfo_Access_Array_Access_Array_Access is access all InitInfo_Access_Array_Access_Array;
   type InitInfo_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InitInfo_Access_Array_Access;
   end record;
   function Java_Box (Value : InitInfo_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InitInfo_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InitInfo_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InitInfo_Access_Array_Access is (if Value /= null and then Value.all in InitInfo_Access_Array_Object'Class then InitInfo_Access_Array_Object'Class (Value.all).Value else null);
   type InitInfo_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InitInfo_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InitInfo_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InitInfo_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InitInfo_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InitInfo_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InitInfo_Access_Array_Access_Array_Object'Class then InitInfo_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.init.InitInfo_Package_References;

with org.allbinary.business.init.InitInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;

package org.allbinary.business.init.InitInfo_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
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


   subtype InitInfo_Access is org.allbinary.business.init.InitInfo_Package_References.InitInfo_Access;
   function "=" (Left, Right : InitInfo_Access) return Boolean renames org.allbinary.business.init.InitInfo_Package_References."=";
   subtype InitInfo_Access_Array is org.allbinary.business.init.InitInfo_Package_References.InitInfo_Access_Array;
   function "=" (Left, Right : InitInfo_Access_Array) return Boolean renames org.allbinary.business.init.InitInfo_Package_References."=";
   subtype InitInfo_Access_Array_Access is org.allbinary.business.init.InitInfo_Package_References.InitInfo_Access_Array_Access;
   function "=" (Left, Right : InitInfo_Access_Array_Access) return Boolean renames org.allbinary.business.init.InitInfo_Package_References."=";
   function Java_Box (Value : InitInfo_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.init.InitInfo_Package_References.Java_Box;
   function Java_Unbox_InitInfo_Access_Array (Value : access Java_Object'Class) return InitInfo_Access_Array_Access renames org.allbinary.business.init.InitInfo_Package_References.Java_Unbox_InitInfo_Access_Array;
   subtype InitInfo_Access_Array_Access_Array is org.allbinary.business.init.InitInfo_Package_References.InitInfo_Access_Array_Access_Array;
   function "=" (Left, Right : InitInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.business.init.InitInfo_Package_References."=";
   subtype InitInfo_Access_Array_Access_Array_Access is org.allbinary.business.init.InitInfo_Package_References.InitInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InitInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.init.InitInfo_Package_References."=";
   function Java_Box (Value : InitInfo_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.init.InitInfo_Package_References.Java_Box;
   function Java_Unbox_InitInfo_Access_Array_Access_Array (Value : access Java_Object'Class) return InitInfo_Access_Array_Access_Array_Access renames org.allbinary.business.init.InitInfo_Package_References.Java_Unbox_InitInfo_Access_Array_Access_Array;

   type InitInfo is new Java_Object with record
      TESTING : Unbounded_String;
      MAINPATH : Unbounded_String;
      TESTHTMLPATH : Unbounded_String;
      testing_Case : Unbounded_String;
      mainPath_Case : AbPath_Access;
      testHtmlPath_Case : AbPath_Access;
      hasRead : Boolean;
   end record;
   instance : InitInfo_Access;

   procedure Initialize (This : in out InitInfo'Class);
   function Create return InitInfo_Access;
   function getInstance return InitInfo_Access;
   procedure set (This : in out InitInfo);
   procedure set (This : in out InitInfo; hashMap_Param : access HashMap_Package.HashMap'Class);
   procedure get (This : in out InitInfo);
   procedure setHasRead (This : in out InitInfo; value : Boolean);
   procedure updateIfNeeded (This : in out InitInfo);
   function isTesting (This : in out InitInfo) return Boolean;
   function getTesting (This : in out InitInfo) return Unbounded_String;
   function getTestHtmlPath (This : in out InitInfo) return Unbounded_String;
   function getMainPath (This : in out InitInfo) return Unbounded_String;
   procedure setTesting (This : in out InitInfo; value : Unbounded_String);
   procedure setTestHtmlPath (This : in out InitInfo; value_Param : access AbPath_Package.AbPath'Class);
   procedure setMainPath (This : in out InitInfo; value_Param : access AbPath_Package.AbPath'Class);
   function isMainPathValid (This : in out InitInfo; abPath_Param : access AbPath_Package.AbPath'Class) return Boolean;
   procedure isMainPathValid (This : in out InitInfo; abPath_Param : access AbPath_Package.AbPath'Class);
   function isTestHtmlPathValid (This : in out InitInfo; abPath_Param : access AbPath_Package.AbPath'Class) return Boolean;
   procedure isTestHtmlPathValid (This : in out InitInfo; abPath_Param : access AbPath_Package.AbPath'Class);
   function isTestingValid (This : in out InitInfo; testing : Unbounded_String) return Boolean;
   procedure isTestingValid (This : in out InitInfo; testing : Unbounded_String);
   function toHashMap (This : in out InitInfo) return HashMap_Access;

end org.allbinary.business.init.InitInfo_Package;


