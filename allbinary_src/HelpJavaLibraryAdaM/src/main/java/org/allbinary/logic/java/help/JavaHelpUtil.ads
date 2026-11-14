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
limited with org.allbinary.logic.java.help.JavaHelpUtil_Package;
package org.allbinary.logic.java.help.JavaHelpUtil_Package_References is
   type JavaHelpUtil_Access is access all org.allbinary.logic.java.help.JavaHelpUtil_Package.JavaHelpUtil'Class;
   type JavaHelpUtil_Access_Array is array (Natural range <>) of JavaHelpUtil_Access;
   type JavaHelpUtil_Access_Array_Access is access all JavaHelpUtil_Access_Array;
   type JavaHelpUtil_Access_Array_Access_Array is array (Natural range <>) of JavaHelpUtil_Access_Array_Access;
   type JavaHelpUtil_Access_Array_Access_Array_Access is access all JavaHelpUtil_Access_Array_Access_Array;
   type JavaHelpUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : JavaHelpUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : JavaHelpUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new JavaHelpUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_JavaHelpUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return JavaHelpUtil_Access_Array_Access is (if Value /= null and then Value.all in JavaHelpUtil_Access_Array_Object'Class then JavaHelpUtil_Access_Array_Object'Class (Value.all).Value else null);
   type JavaHelpUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : JavaHelpUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : JavaHelpUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new JavaHelpUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_JavaHelpUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return JavaHelpUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in JavaHelpUtil_Access_Array_Access_Array_Object'Class then JavaHelpUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.java.help.JavaHelpUtil_Package_References;

with org.allbinary.logic.java.help.JavaHelpUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.event.ActionEvent_Package; use java.awt.event.ActionEvent_Package;
with java.net.URL_Package; use java.net.URL_Package;
--  with javax.help.CSH_Package; use javax.help.CSH_Package;
--  with javax.help.HelpBroker_Package; use javax.help.HelpBroker_Package;
--  with javax.help.HelpSet_Package; use javax.help.HelpSet_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.logic.java.help.Point_Package;
with org.allbinary.logic.java.help.Point_Package_References;
limited with org.allbinary.logic.java.help.Dimension_Package;
with org.allbinary.logic.java.help.Dimension_Package_References;

package org.allbinary.logic.java.help.JavaHelpUtil_Package is

   package URL_Package renames Standard.java.net.URL_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype Point_Access is org.allbinary.logic.java.help.Point_Package_References.Point_Access;
   use type Point_Access;
   subtype Point_Access_Array is org.allbinary.logic.java.help.Point_Package_References.Point_Access_Array;
   use type Point_Access_Array;
   subtype Point_Access_Array_Access is org.allbinary.logic.java.help.Point_Package_References.Point_Access_Array_Access;
   use type Point_Access_Array_Access;
   subtype Point_Access_Array_Access_Array is org.allbinary.logic.java.help.Point_Package_References.Point_Access_Array_Access_Array;
   use type Point_Access_Array_Access_Array;
   subtype Point_Access_Array_Access_Array_Access is org.allbinary.logic.java.help.Point_Package_References.Point_Access_Array_Access_Array_Access;
   use type Point_Access_Array_Access_Array_Access;
   subtype Dimension_Access is org.allbinary.logic.java.help.Dimension_Package_References.Dimension_Access;
   use type Dimension_Access;
   subtype Dimension_Access_Array is org.allbinary.logic.java.help.Dimension_Package_References.Dimension_Access_Array;
   use type Dimension_Access_Array;
   subtype Dimension_Access_Array_Access is org.allbinary.logic.java.help.Dimension_Package_References.Dimension_Access_Array_Access;
   use type Dimension_Access_Array_Access;
   subtype Dimension_Access_Array_Access_Array is org.allbinary.logic.java.help.Dimension_Package_References.Dimension_Access_Array_Access_Array;
   use type Dimension_Access_Array_Access_Array;
   subtype Dimension_Access_Array_Access_Array_Access is org.allbinary.logic.java.help.Dimension_Package_References.Dimension_Access_Array_Access_Array_Access;
   use type Dimension_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype JavaHelpUtil_Access is org.allbinary.logic.java.help.JavaHelpUtil_Package_References.JavaHelpUtil_Access;
   function "=" (Left, Right : JavaHelpUtil_Access) return Boolean renames org.allbinary.logic.java.help.JavaHelpUtil_Package_References."=";
   subtype JavaHelpUtil_Access_Array is org.allbinary.logic.java.help.JavaHelpUtil_Package_References.JavaHelpUtil_Access_Array;
   function "=" (Left, Right : JavaHelpUtil_Access_Array) return Boolean renames org.allbinary.logic.java.help.JavaHelpUtil_Package_References."=";
   subtype JavaHelpUtil_Access_Array_Access is org.allbinary.logic.java.help.JavaHelpUtil_Package_References.JavaHelpUtil_Access_Array_Access;
   function "=" (Left, Right : JavaHelpUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.java.help.JavaHelpUtil_Package_References."=";
   function Java_Box (Value : JavaHelpUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.help.JavaHelpUtil_Package_References.Java_Box;
   function Java_Unbox_JavaHelpUtil_Access_Array (Value : access Java_Object'Class) return JavaHelpUtil_Access_Array_Access renames org.allbinary.logic.java.help.JavaHelpUtil_Package_References.Java_Unbox_JavaHelpUtil_Access_Array;
   subtype JavaHelpUtil_Access_Array_Access_Array is org.allbinary.logic.java.help.JavaHelpUtil_Package_References.JavaHelpUtil_Access_Array_Access_Array;
   function "=" (Left, Right : JavaHelpUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.help.JavaHelpUtil_Package_References."=";
   subtype JavaHelpUtil_Access_Array_Access_Array_Access is org.allbinary.logic.java.help.JavaHelpUtil_Package_References.JavaHelpUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : JavaHelpUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.help.JavaHelpUtil_Package_References."=";
   function Java_Box (Value : JavaHelpUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.help.JavaHelpUtil_Package_References.Java_Box;
   function Java_Unbox_JavaHelpUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return JavaHelpUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.java.help.JavaHelpUtil_Package_References.Java_Unbox_JavaHelpUtil_Access_Array_Access_Array;

   type JavaHelpUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      point : Point_Access;
      dimension : Dimension_Access;
      contextSensitiveHelpActionEvent : ActionEvent_Access;
      commonStrings : CommonStrings_Access;
   end record;
   instance : JavaHelpUtil_Access;

   procedure Initialize (This : in out JavaHelpUtil'Class);
   function Create return JavaHelpUtil_Access;
   function getInstance return JavaHelpUtil_Access;
   function getHelpSet (This : in out JavaHelpUtil; filePath : Unbounded_String) return HelpSet_Access;
   procedure getHelpSet (This : in out JavaHelpUtil; filePath : Unbounded_String);
   function getHelpSet (This : in out JavaHelpUtil; url_Param : access URL_Package.URL'Class) return HelpSet_Access;
   procedure getHelpSet (This : in out JavaHelpUtil; url_Param : access URL_Package.URL'Class);
   procedure show (This : in out JavaHelpUtil; helpSet_Param : access HelpSet_Package.HelpSet'Class);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.logic.java.help.JavaHelpUtil_Package;


