-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.game.displayable.AlwaysRepaintBehavior_Package;
package org.allbinary.game.displayable.AlwaysRepaintBehavior_Package_References is
   type AlwaysRepaintBehavior_Access is access all org.allbinary.game.displayable.AlwaysRepaintBehavior_Package.AlwaysRepaintBehavior'Class;
   type AlwaysRepaintBehavior_Access_Array is array (Natural range <>) of AlwaysRepaintBehavior_Access;
   type AlwaysRepaintBehavior_Access_Array_Access is access all AlwaysRepaintBehavior_Access_Array;
   type AlwaysRepaintBehavior_Access_Array_Access_Array is array (Natural range <>) of AlwaysRepaintBehavior_Access_Array_Access;
   type AlwaysRepaintBehavior_Access_Array_Access_Array_Access is access all AlwaysRepaintBehavior_Access_Array_Access_Array;
   type AlwaysRepaintBehavior_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AlwaysRepaintBehavior_Access_Array_Access;
   end record;
   function Java_Box (Value : AlwaysRepaintBehavior_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AlwaysRepaintBehavior_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AlwaysRepaintBehavior_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AlwaysRepaintBehavior_Access_Array_Access is (if Value /= null and then Value.all in AlwaysRepaintBehavior_Access_Array_Object'Class then AlwaysRepaintBehavior_Access_Array_Object'Class (Value.all).Value else null);
   type AlwaysRepaintBehavior_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AlwaysRepaintBehavior_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AlwaysRepaintBehavior_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AlwaysRepaintBehavior_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AlwaysRepaintBehavior_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AlwaysRepaintBehavior_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AlwaysRepaintBehavior_Access_Array_Access_Array_Object'Class then AlwaysRepaintBehavior_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.AlwaysRepaintBehavior_Package_References;

with org.allbinary.game.displayable.AlwaysRepaintBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Canvas_Package_References;
with org.allbinary.game.displayable.RepaintBehavior_Package; use org.allbinary.game.displayable.RepaintBehavior_Package;

package org.allbinary.game.displayable.AlwaysRepaintBehavior_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package Reference_Types is
   subtype Canvas_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access;
   use type Canvas_Access;
   subtype Canvas_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array;
   use type Canvas_Access_Array;
   subtype Canvas_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access;
   use type Canvas_Access_Array_Access;
   subtype Canvas_Access_Array_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array;
   use type Canvas_Access_Array_Access_Array;
   subtype Canvas_Access_Array_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array_Access;
   use type Canvas_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AlwaysRepaintBehavior_Access is org.allbinary.game.displayable.AlwaysRepaintBehavior_Package_References.AlwaysRepaintBehavior_Access;
   function "=" (Left, Right : AlwaysRepaintBehavior_Access) return Boolean renames org.allbinary.game.displayable.AlwaysRepaintBehavior_Package_References."=";
   subtype AlwaysRepaintBehavior_Access_Array is org.allbinary.game.displayable.AlwaysRepaintBehavior_Package_References.AlwaysRepaintBehavior_Access_Array;
   function "=" (Left, Right : AlwaysRepaintBehavior_Access_Array) return Boolean renames org.allbinary.game.displayable.AlwaysRepaintBehavior_Package_References."=";
   subtype AlwaysRepaintBehavior_Access_Array_Access is org.allbinary.game.displayable.AlwaysRepaintBehavior_Package_References.AlwaysRepaintBehavior_Access_Array_Access;
   function "=" (Left, Right : AlwaysRepaintBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.AlwaysRepaintBehavior_Package_References."=";
   function Java_Box (Value : AlwaysRepaintBehavior_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.AlwaysRepaintBehavior_Package_References.Java_Box;
   function Java_Unbox_AlwaysRepaintBehavior_Access_Array (Value : access Java_Object'Class) return AlwaysRepaintBehavior_Access_Array_Access renames org.allbinary.game.displayable.AlwaysRepaintBehavior_Package_References.Java_Unbox_AlwaysRepaintBehavior_Access_Array;
   subtype AlwaysRepaintBehavior_Access_Array_Access_Array is org.allbinary.game.displayable.AlwaysRepaintBehavior_Package_References.AlwaysRepaintBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : AlwaysRepaintBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.AlwaysRepaintBehavior_Package_References."=";
   subtype AlwaysRepaintBehavior_Access_Array_Access_Array_Access is org.allbinary.game.displayable.AlwaysRepaintBehavior_Package_References.AlwaysRepaintBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AlwaysRepaintBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.AlwaysRepaintBehavior_Package_References."=";
   function Java_Box (Value : AlwaysRepaintBehavior_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.AlwaysRepaintBehavior_Package_References.Java_Box;
   function Java_Unbox_AlwaysRepaintBehavior_Access_Array_Access_Array (Value : access Java_Object'Class) return AlwaysRepaintBehavior_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.AlwaysRepaintBehavior_Package_References.Java_Unbox_AlwaysRepaintBehavior_Access_Array_Access_Array;

   type AlwaysRepaintBehavior is new RepaintBehavior with record
      AlwaysRepaintBehavior_Field_NAME : Unbounded_String;
   end record;
   instanceC : AlwaysRepaintBehavior_Access;

   procedure Initialize (This : in out AlwaysRepaintBehavior'Class);
   function Create return AlwaysRepaintBehavior_Access;
   function getInstance return AlwaysRepaintBehavior_Access;
   procedure repaint (This : in out AlwaysRepaintBehavior; canvas_Param : access Canvas_Package.Canvas'Class);
   procedure onChangeRepaint (This : in out AlwaysRepaintBehavior; canvas_Param : access Canvas_Package.Canvas'Class);

end org.allbinary.game.displayable.AlwaysRepaintBehavior_Package;


