--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.view.AllBinaryMidletViewInterface_Package;
package org.allbinary.view.AllBinaryMidletViewInterface_Package_References is
   type AllBinaryMidletViewInterface_Access is access all org.allbinary.view.AllBinaryMidletViewInterface_Package.AllBinaryMidletViewInterface'Class;
   type AllBinaryMidletViewInterface_Access_Array is array (Natural range <>) of AllBinaryMidletViewInterface_Access;
   type AllBinaryMidletViewInterface_Access_Array_Access is access all AllBinaryMidletViewInterface_Access_Array;
   type AllBinaryMidletViewInterface_Access_Array_Access_Array is array (Natural range <>) of AllBinaryMidletViewInterface_Access_Array_Access;
   type AllBinaryMidletViewInterface_Access_Array_Access_Array_Access is access all AllBinaryMidletViewInterface_Access_Array_Access_Array;
   type AllBinaryMidletViewInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryMidletViewInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryMidletViewInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryMidletViewInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryMidletViewInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryMidletViewInterface_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryMidletViewInterface_Access_Array_Object'Class then AllBinaryMidletViewInterface_Access_Array_Object'Class (Value.all).Value else null);
   type AllBinaryMidletViewInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryMidletViewInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryMidletViewInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryMidletViewInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryMidletViewInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryMidletViewInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryMidletViewInterface_Access_Array_Access_Array_Object'Class then AllBinaryMidletViewInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.view.AllBinaryMidletViewInterface_Package_References;

with org.allbinary.view.AllBinaryMidletViewInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.configuration.event.GameInitializedListenerInterface_Package; use org.allbinary.game.configuration.event.GameInitializedListenerInterface_Package;
with org.allbinary.game.midlet.DemoGameMidletEventListener_Package; use org.allbinary.game.midlet.DemoGameMidletEventListener_Package;
with org.allbinary.midlet.MidletCompositeInterface_Package; use org.allbinary.midlet.MidletCompositeInterface_Package;
with org.allbinary.view.EmulatorViewInterface_Package; use org.allbinary.view.EmulatorViewInterface_Package;

package org.allbinary.view.AllBinaryMidletViewInterface_Package is

   package GameInitializedListenerInterface_Package renames Standard.org.allbinary.game.configuration.event.GameInitializedListenerInterface_Package;
   package DemoGameMidletEventListener_Package renames Standard.org.allbinary.game.midlet.DemoGameMidletEventListener_Package;
   package MidletCompositeInterface_Package renames Standard.org.allbinary.midlet.MidletCompositeInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type AllBinaryMidletViewInterface is interface and MidletCompositeInterface and EmulatorViewInterface and DemoGameMidletEventListener and GameInitializedListenerInterface;
   subtype AllBinaryMidletViewInterface_Access is org.allbinary.view.AllBinaryMidletViewInterface_Package_References.AllBinaryMidletViewInterface_Access;
   function "=" (Left, Right : AllBinaryMidletViewInterface_Access) return Boolean renames org.allbinary.view.AllBinaryMidletViewInterface_Package_References."=";
   subtype AllBinaryMidletViewInterface_Access_Array is org.allbinary.view.AllBinaryMidletViewInterface_Package_References.AllBinaryMidletViewInterface_Access_Array;
   function "=" (Left, Right : AllBinaryMidletViewInterface_Access_Array) return Boolean renames org.allbinary.view.AllBinaryMidletViewInterface_Package_References."=";
   subtype AllBinaryMidletViewInterface_Access_Array_Access is org.allbinary.view.AllBinaryMidletViewInterface_Package_References.AllBinaryMidletViewInterface_Access_Array_Access;
   function "=" (Left, Right : AllBinaryMidletViewInterface_Access_Array_Access) return Boolean renames org.allbinary.view.AllBinaryMidletViewInterface_Package_References."=";
   function Java_Box (Value : AllBinaryMidletViewInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.view.AllBinaryMidletViewInterface_Package_References.Java_Box;
   function Java_Unbox_AllBinaryMidletViewInterface_Access_Array (Value : access Java_Object'Class) return AllBinaryMidletViewInterface_Access_Array_Access renames org.allbinary.view.AllBinaryMidletViewInterface_Package_References.Java_Unbox_AllBinaryMidletViewInterface_Access_Array;
   subtype AllBinaryMidletViewInterface_Access_Array_Access_Array is org.allbinary.view.AllBinaryMidletViewInterface_Package_References.AllBinaryMidletViewInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryMidletViewInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.view.AllBinaryMidletViewInterface_Package_References."=";
   subtype AllBinaryMidletViewInterface_Access_Array_Access_Array_Access is org.allbinary.view.AllBinaryMidletViewInterface_Package_References.AllBinaryMidletViewInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryMidletViewInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.view.AllBinaryMidletViewInterface_Package_References."=";
   function Java_Box (Value : AllBinaryMidletViewInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.view.AllBinaryMidletViewInterface_Package_References.Java_Box;
   function Java_Unbox_AllBinaryMidletViewInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return AllBinaryMidletViewInterface_Access_Array_Access_Array_Access renames org.allbinary.view.AllBinaryMidletViewInterface_Package_References.Java_Unbox_AllBinaryMidletViewInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_AllBinaryMidletViewInterface (Value : AllBinaryMidletViewInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onResume (This : in out AllBinaryMidletViewInterface) is abstract;
   procedure onPause (This : in out AllBinaryMidletViewInterface) is abstract;
   procedure onDestroy (This : in out AllBinaryMidletViewInterface) is abstract;

end org.allbinary.view.AllBinaryMidletViewInterface_Package;


