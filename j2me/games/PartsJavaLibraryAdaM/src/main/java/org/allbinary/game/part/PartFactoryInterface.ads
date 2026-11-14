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
limited with org.allbinary.game.part.PartFactoryInterface_Package;
package org.allbinary.game.part.PartFactoryInterface_Package_References is
   type PartFactoryInterface_Access is access all org.allbinary.game.part.PartFactoryInterface_Package.PartFactoryInterface'Class;
   type PartFactoryInterface_Access_Array is array (Natural range <>) of PartFactoryInterface_Access;
   type PartFactoryInterface_Access_Array_Access is access all PartFactoryInterface_Access_Array;
   type PartFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of PartFactoryInterface_Access_Array_Access;
   type PartFactoryInterface_Access_Array_Access_Array_Access is access all PartFactoryInterface_Access_Array_Access_Array;
   type PartFactoryInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PartFactoryInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : PartFactoryInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PartFactoryInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PartFactoryInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PartFactoryInterface_Access_Array_Access is (if Value /= null and then Value.all in PartFactoryInterface_Access_Array_Object'Class then PartFactoryInterface_Access_Array_Object'Class (Value.all).Value else null);
   type PartFactoryInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PartFactoryInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PartFactoryInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PartFactoryInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PartFactoryInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PartFactoryInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PartFactoryInterface_Access_Array_Access_Array_Object'Class then PartFactoryInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.part.PartFactoryInterface_Package_References;

with org.allbinary.game.part.PartFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.RelativeRelationship_Package;
with org.allbinary.graphics.RelativeRelationship_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.game.part.PartInterface_Package;
with org.allbinary.game.part.PartInterface_Package_References;

package org.allbinary.game.part.PartFactoryInterface_Package is

   package RelativeRelationship_Package renames Standard.org.allbinary.graphics.RelativeRelationship_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package Reference_Types is
   subtype RelativeRelationship_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access;
   use type RelativeRelationship_Access;
   subtype RelativeRelationship_Access_Array is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array;
   use type RelativeRelationship_Access_Array;
   subtype RelativeRelationship_Access_Array_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access;
   use type RelativeRelationship_Access_Array_Access;
   subtype RelativeRelationship_Access_Array_Access_Array is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access_Array;
   use type RelativeRelationship_Access_Array_Access_Array;
   subtype RelativeRelationship_Access_Array_Access_Array_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access_Array_Access;
   use type RelativeRelationship_Access_Array_Access_Array_Access;
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   subtype PartInterface_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access;
   use type PartInterface_Access;
   subtype PartInterface_Access_Array is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array;
   use type PartInterface_Access_Array;
   subtype PartInterface_Access_Array_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access;
   use type PartInterface_Access_Array_Access;
   subtype PartInterface_Access_Array_Access_Array is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access_Array;
   use type PartInterface_Access_Array_Access_Array;
   subtype PartInterface_Access_Array_Access_Array_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access_Array_Access;
   use type PartInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type PartFactoryInterface is interface;
   subtype PartFactoryInterface_Access is org.allbinary.game.part.PartFactoryInterface_Package_References.PartFactoryInterface_Access;
   function "=" (Left, Right : PartFactoryInterface_Access) return Boolean renames org.allbinary.game.part.PartFactoryInterface_Package_References."=";
   subtype PartFactoryInterface_Access_Array is org.allbinary.game.part.PartFactoryInterface_Package_References.PartFactoryInterface_Access_Array;
   function "=" (Left, Right : PartFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.part.PartFactoryInterface_Package_References."=";
   subtype PartFactoryInterface_Access_Array_Access is org.allbinary.game.part.PartFactoryInterface_Package_References.PartFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : PartFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.part.PartFactoryInterface_Package_References."=";
   function Java_Box (Value : PartFactoryInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.part.PartFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_PartFactoryInterface_Access_Array (Value : access Java_Object'Class) return PartFactoryInterface_Access_Array_Access renames org.allbinary.game.part.PartFactoryInterface_Package_References.Java_Unbox_PartFactoryInterface_Access_Array;
   subtype PartFactoryInterface_Access_Array_Access_Array is org.allbinary.game.part.PartFactoryInterface_Package_References.PartFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PartFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.part.PartFactoryInterface_Package_References."=";
   subtype PartFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.part.PartFactoryInterface_Package_References.PartFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PartFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.part.PartFactoryInterface_Package_References."=";
   function Java_Box (Value : PartFactoryInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.part.PartFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_PartFactoryInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return PartFactoryInterface_Access_Array_Access_Array_Access renames org.allbinary.game.part.PartFactoryInterface_Package_References.Java_Unbox_PartFactoryInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_PartFactoryInterface (Value : PartFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out PartFactoryInterface; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class) return PartInterface_Access is abstract;
   procedure getInstance (This : in out PartFactoryInterface; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class) is abstract;

end org.allbinary.game.part.PartFactoryInterface_Package;


