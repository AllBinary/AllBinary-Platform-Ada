--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package;
package org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package_References is
   type MultiPlayerGameFeatureFactory_Access is access all org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package.MultiPlayerGameFeatureFactory'Class;
   type MultiPlayerGameFeatureFactory_Access_Array is array (Natural range <>) of MultiPlayerGameFeatureFactory_Access;
   type MultiPlayerGameFeatureFactory_Access_Array_Access is access all MultiPlayerGameFeatureFactory_Access_Array;
   type MultiPlayerGameFeatureFactory_Access_Array_Access_Array is array (Natural range <>) of MultiPlayerGameFeatureFactory_Access_Array_Access;
   type MultiPlayerGameFeatureFactory_Access_Array_Access_Array_Access is access all MultiPlayerGameFeatureFactory_Access_Array_Access_Array;
   type MultiPlayerGameFeatureFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MultiPlayerGameFeatureFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : MultiPlayerGameFeatureFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MultiPlayerGameFeatureFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MultiPlayerGameFeatureFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MultiPlayerGameFeatureFactory_Access_Array_Access is (if Value /= null and then Value.all in MultiPlayerGameFeatureFactory_Access_Array_Object'Class then MultiPlayerGameFeatureFactory_Access_Array_Object'Class (Value.all).Value else null);
   type MultiPlayerGameFeatureFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MultiPlayerGameFeatureFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MultiPlayerGameFeatureFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MultiPlayerGameFeatureFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MultiPlayerGameFeatureFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MultiPlayerGameFeatureFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MultiPlayerGameFeatureFactory_Access_Array_Access_Array_Object'Class then MultiPlayerGameFeatureFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package_References;

with org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MultiPlayerGameFeatureFactory_Access is org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package_References.MultiPlayerGameFeatureFactory_Access;
   function "=" (Left, Right : MultiPlayerGameFeatureFactory_Access) return Boolean renames org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package_References."=";
   subtype MultiPlayerGameFeatureFactory_Access_Array is org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package_References.MultiPlayerGameFeatureFactory_Access_Array;
   function "=" (Left, Right : MultiPlayerGameFeatureFactory_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package_References."=";
   subtype MultiPlayerGameFeatureFactory_Access_Array_Access is org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package_References.MultiPlayerGameFeatureFactory_Access_Array_Access;
   function "=" (Left, Right : MultiPlayerGameFeatureFactory_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package_References."=";
   function Java_Box (Value : MultiPlayerGameFeatureFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package_References.Java_Box;
   function Java_Unbox_MultiPlayerGameFeatureFactory_Access_Array (Value : access Java_Object'Class) return MultiPlayerGameFeatureFactory_Access_Array_Access renames org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package_References.Java_Unbox_MultiPlayerGameFeatureFactory_Access_Array;
   subtype MultiPlayerGameFeatureFactory_Access_Array_Access_Array is org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package_References.MultiPlayerGameFeatureFactory_Access_Array_Access_Array;
   function "=" (Left, Right : MultiPlayerGameFeatureFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package_References."=";
   subtype MultiPlayerGameFeatureFactory_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package_References.MultiPlayerGameFeatureFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MultiPlayerGameFeatureFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package_References."=";
   function Java_Box (Value : MultiPlayerGameFeatureFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package_References.Java_Box;
   function Java_Unbox_MultiPlayerGameFeatureFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return MultiPlayerGameFeatureFactory_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package_References.Java_Unbox_MultiPlayerGameFeatureFactory_Access_Array_Access_Array;

   type MultiPlayerGameFeatureFactory is new Java_Object with null record;
   instance : MultiPlayerGameFeatureFactory_Access;

   procedure Initialize (This : in out MultiPlayerGameFeatureFactory'Class);
   function Create return MultiPlayerGameFeatureFactory_Access;
   function getInstance return MultiPlayerGameFeatureFactory_Access;
   procedure addCommands (This : in out MultiPlayerGameFeatureFactory; anyType_Param : access Java_Object'Class);
   procedure addCommands (This : in out MultiPlayerGameFeatureFactory; Value : Unbounded_String);

end org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package;


