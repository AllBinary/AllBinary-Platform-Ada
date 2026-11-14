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
limited with org.allbinary.logic.java.help.JavaHelpSetNotifier_Package;
package org.allbinary.logic.java.help.JavaHelpSetNotifier_Package_References is
   type JavaHelpSetNotifier_Access is access all org.allbinary.logic.java.help.JavaHelpSetNotifier_Package.JavaHelpSetNotifier'Class;
   type JavaHelpSetNotifier_Access_Array is array (Natural range <>) of JavaHelpSetNotifier_Access;
   type JavaHelpSetNotifier_Access_Array_Access is access all JavaHelpSetNotifier_Access_Array;
   type JavaHelpSetNotifier_Access_Array_Access_Array is array (Natural range <>) of JavaHelpSetNotifier_Access_Array_Access;
   type JavaHelpSetNotifier_Access_Array_Access_Array_Access is access all JavaHelpSetNotifier_Access_Array_Access_Array;
   type JavaHelpSetNotifier_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : JavaHelpSetNotifier_Access_Array_Access;
   end record;
   function Java_Box (Value : JavaHelpSetNotifier_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new JavaHelpSetNotifier_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_JavaHelpSetNotifier_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return JavaHelpSetNotifier_Access_Array_Access is (if Value /= null and then Value.all in JavaHelpSetNotifier_Access_Array_Object'Class then JavaHelpSetNotifier_Access_Array_Object'Class (Value.all).Value else null);
   type JavaHelpSetNotifier_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : JavaHelpSetNotifier_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : JavaHelpSetNotifier_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new JavaHelpSetNotifier_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_JavaHelpSetNotifier_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return JavaHelpSetNotifier_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in JavaHelpSetNotifier_Access_Array_Access_Array_Object'Class then JavaHelpSetNotifier_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.java.help.JavaHelpSetNotifier_Package_References;

with org.allbinary.logic.java.help.JavaHelpSetNotifier_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
--  with javax.help.HelpSet_Package; use javax.help.HelpSet_Package;

package org.allbinary.logic.java.help.JavaHelpSetNotifier_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype JavaHelpSetNotifier_Access is org.allbinary.logic.java.help.JavaHelpSetNotifier_Package_References.JavaHelpSetNotifier_Access;
   function "=" (Left, Right : JavaHelpSetNotifier_Access) return Boolean renames org.allbinary.logic.java.help.JavaHelpSetNotifier_Package_References."=";
   subtype JavaHelpSetNotifier_Access_Array is org.allbinary.logic.java.help.JavaHelpSetNotifier_Package_References.JavaHelpSetNotifier_Access_Array;
   function "=" (Left, Right : JavaHelpSetNotifier_Access_Array) return Boolean renames org.allbinary.logic.java.help.JavaHelpSetNotifier_Package_References."=";
   subtype JavaHelpSetNotifier_Access_Array_Access is org.allbinary.logic.java.help.JavaHelpSetNotifier_Package_References.JavaHelpSetNotifier_Access_Array_Access;
   function "=" (Left, Right : JavaHelpSetNotifier_Access_Array_Access) return Boolean renames org.allbinary.logic.java.help.JavaHelpSetNotifier_Package_References."=";
   function Java_Box (Value : JavaHelpSetNotifier_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.help.JavaHelpSetNotifier_Package_References.Java_Box;
   function Java_Unbox_JavaHelpSetNotifier_Access_Array (Value : access Java_Object'Class) return JavaHelpSetNotifier_Access_Array_Access renames org.allbinary.logic.java.help.JavaHelpSetNotifier_Package_References.Java_Unbox_JavaHelpSetNotifier_Access_Array;
   subtype JavaHelpSetNotifier_Access_Array_Access_Array is org.allbinary.logic.java.help.JavaHelpSetNotifier_Package_References.JavaHelpSetNotifier_Access_Array_Access_Array;
   function "=" (Left, Right : JavaHelpSetNotifier_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.help.JavaHelpSetNotifier_Package_References."=";
   subtype JavaHelpSetNotifier_Access_Array_Access_Array_Access is org.allbinary.logic.java.help.JavaHelpSetNotifier_Package_References.JavaHelpSetNotifier_Access_Array_Access_Array_Access;
   function "=" (Left, Right : JavaHelpSetNotifier_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.help.JavaHelpSetNotifier_Package_References."=";
   function Java_Box (Value : JavaHelpSetNotifier_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.help.JavaHelpSetNotifier_Package_References.Java_Box;
   function Java_Unbox_JavaHelpSetNotifier_Access_Array_Access_Array (Value : access Java_Object'Class) return JavaHelpSetNotifier_Access_Array_Access_Array_Access renames org.allbinary.logic.java.help.JavaHelpSetNotifier_Package_References.Java_Unbox_JavaHelpSetNotifier_Access_Array_Access_Array;

   type JavaHelpSetNotifier is new Java_Object with null record;
   vector : BasicArrayList_Access;

   procedure Initialize (This : in out JavaHelpSetNotifier'Class);
   function Create return JavaHelpSetNotifier_Access;
   function get return BasicArrayList_Access;
   function isNotified (helpSet_Param : access HelpSet_Package.HelpSet'Class) return Boolean;
   procedure isNotified (helpSet_Param : access HelpSet_Package.HelpSet'Class);

end org.allbinary.logic.java.help.JavaHelpSetNotifier_Package;


