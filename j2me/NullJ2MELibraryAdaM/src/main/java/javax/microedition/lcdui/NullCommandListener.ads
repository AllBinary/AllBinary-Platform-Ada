--  Generated Code Do Not Modify

with AllBinary_Java;
limited with javax.microedition.lcdui.NullCommandListener_Package;
package javax.microedition.lcdui.NullCommandListener_Package_References is
   type NullCommandListener_Access is access all javax.microedition.lcdui.NullCommandListener_Package.NullCommandListener'Class;
   type NullCommandListener_Access_Array is array (Natural range <>) of NullCommandListener_Access;
   type NullCommandListener_Access_Array_Access is access all NullCommandListener_Access_Array;
   type NullCommandListener_Access_Array_Access_Array is array (Natural range <>) of NullCommandListener_Access_Array_Access;
   type NullCommandListener_Access_Array_Access_Array_Access is access all NullCommandListener_Access_Array_Access_Array;
   type NullCommandListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullCommandListener_Access_Array_Access;
   end record;
   function Java_Box (Value : NullCommandListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullCommandListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullCommandListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullCommandListener_Access_Array_Access is (if Value /= null and then Value.all in NullCommandListener_Access_Array_Object'Class then NullCommandListener_Access_Array_Object'Class (Value.all).Value else null);
   type NullCommandListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullCommandListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullCommandListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullCommandListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullCommandListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullCommandListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullCommandListener_Access_Array_Access_Array_Object'Class then NullCommandListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end javax.microedition.lcdui.NullCommandListener_Package_References;

with javax.microedition.lcdui.NullCommandListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
limited with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.Command_Package_References;
limited with javax.microedition.lcdui.Displayable_Package;
with javax.microedition.lcdui.Displayable_Package_References;

package javax.microedition.lcdui.NullCommandListener_Package is

   package Reference_Types is
   subtype Command_Access is javax.microedition.lcdui.Command_Package_References.Command_Access;
   use type Command_Access;
   subtype Command_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array;
   use type Command_Access_Array;
   subtype Command_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access;
   use type Command_Access_Array_Access;
   subtype Command_Access_Array_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array;
   use type Command_Access_Array_Access_Array;
   subtype Command_Access_Array_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array_Access;
   use type Command_Access_Array_Access_Array_Access;
   subtype Displayable_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access;
   use type Displayable_Access;
   subtype Displayable_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array;
   use type Displayable_Access_Array;
   subtype Displayable_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access;
   use type Displayable_Access_Array_Access;
   subtype Displayable_Access_Array_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array;
   use type Displayable_Access_Array_Access_Array;
   subtype Displayable_Access_Array_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array_Access;
   use type Displayable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NullCommandListener_Access is javax.microedition.lcdui.NullCommandListener_Package_References.NullCommandListener_Access;
   function "=" (Left, Right : NullCommandListener_Access) return Boolean renames javax.microedition.lcdui.NullCommandListener_Package_References."=";
   subtype NullCommandListener_Access_Array is javax.microedition.lcdui.NullCommandListener_Package_References.NullCommandListener_Access_Array;
   function "=" (Left, Right : NullCommandListener_Access_Array) return Boolean renames javax.microedition.lcdui.NullCommandListener_Package_References."=";
   subtype NullCommandListener_Access_Array_Access is javax.microedition.lcdui.NullCommandListener_Package_References.NullCommandListener_Access_Array_Access;
   function "=" (Left, Right : NullCommandListener_Access_Array_Access) return Boolean renames javax.microedition.lcdui.NullCommandListener_Package_References."=";
   function Java_Box (Value : NullCommandListener_Access_Array_Access) return Java_Object_Access renames javax.microedition.lcdui.NullCommandListener_Package_References.Java_Box;
   function Java_Unbox_NullCommandListener_Access_Array (Value : access Java_Object'Class) return NullCommandListener_Access_Array_Access renames javax.microedition.lcdui.NullCommandListener_Package_References.Java_Unbox_NullCommandListener_Access_Array;
   subtype NullCommandListener_Access_Array_Access_Array is javax.microedition.lcdui.NullCommandListener_Package_References.NullCommandListener_Access_Array_Access_Array;
   function "=" (Left, Right : NullCommandListener_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.NullCommandListener_Package_References."=";
   subtype NullCommandListener_Access_Array_Access_Array_Access is javax.microedition.lcdui.NullCommandListener_Package_References.NullCommandListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullCommandListener_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.NullCommandListener_Package_References."=";
   function Java_Box (Value : NullCommandListener_Access_Array_Access_Array_Access) return Java_Object_Access renames javax.microedition.lcdui.NullCommandListener_Package_References.Java_Box;
   function Java_Unbox_NullCommandListener_Access_Array_Access_Array (Value : access Java_Object'Class) return NullCommandListener_Access_Array_Access_Array_Access renames javax.microedition.lcdui.NullCommandListener_Package_References.Java_Unbox_NullCommandListener_Access_Array_Access_Array;

   type NullCommandListener is new Java_Object and CommandListener with null record;
   NULL_COMMAND_LISTENER : NullCommandListener_Access;

   procedure Initialize (This : in out NullCommandListener'Class);
   function Create return NullCommandListener_Access;
   procedure commandAction (This : in out NullCommandListener; c_Param : access Command_Package.Command'Class; d_Param : access Displayable_Package.Displayable'Class);

end javax.microedition.lcdui.NullCommandListener_Package;


