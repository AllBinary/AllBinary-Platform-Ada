-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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
limited with org.allbinary.game.layer.LayerCaptionResources_Package;
package org.allbinary.game.layer.LayerCaptionResources_Package_References is
   type LayerCaptionResources_Access is access all org.allbinary.game.layer.LayerCaptionResources_Package.LayerCaptionResources'Class;
   type LayerCaptionResources_Access_Array is array (Natural range <>) of LayerCaptionResources_Access;
   type LayerCaptionResources_Access_Array_Access is access all LayerCaptionResources_Access_Array;
   type LayerCaptionResources_Access_Array_Access_Array is array (Natural range <>) of LayerCaptionResources_Access_Array_Access;
   type LayerCaptionResources_Access_Array_Access_Array_Access is access all LayerCaptionResources_Access_Array_Access_Array;
   type LayerCaptionResources_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LayerCaptionResources_Access_Array_Access;
   end record;
   function Java_Box (Value : LayerCaptionResources_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LayerCaptionResources_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LayerCaptionResources_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LayerCaptionResources_Access_Array_Access is (if Value /= null and then Value.all in LayerCaptionResources_Access_Array_Object'Class then LayerCaptionResources_Access_Array_Object'Class (Value.all).Value else null);
   type LayerCaptionResources_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LayerCaptionResources_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LayerCaptionResources_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LayerCaptionResources_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LayerCaptionResources_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LayerCaptionResources_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LayerCaptionResources_Access_Array_Access_Array_Object'Class then LayerCaptionResources_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.LayerCaptionResources_Package_References;

with org.allbinary.game.layer.LayerCaptionResources_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.layer.LayerCaptionResources_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype LayerCaptionResources_Access is org.allbinary.game.layer.LayerCaptionResources_Package_References.LayerCaptionResources_Access;
   function "=" (Left, Right : LayerCaptionResources_Access) return Boolean renames org.allbinary.game.layer.LayerCaptionResources_Package_References."=";
   subtype LayerCaptionResources_Access_Array is org.allbinary.game.layer.LayerCaptionResources_Package_References.LayerCaptionResources_Access_Array;
   function "=" (Left, Right : LayerCaptionResources_Access_Array) return Boolean renames org.allbinary.game.layer.LayerCaptionResources_Package_References."=";
   subtype LayerCaptionResources_Access_Array_Access is org.allbinary.game.layer.LayerCaptionResources_Package_References.LayerCaptionResources_Access_Array_Access;
   function "=" (Left, Right : LayerCaptionResources_Access_Array_Access) return Boolean renames org.allbinary.game.layer.LayerCaptionResources_Package_References."=";
   function Java_Box (Value : LayerCaptionResources_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.LayerCaptionResources_Package_References.Java_Box;
   function Java_Unbox_LayerCaptionResources_Access_Array (Value : access Java_Object'Class) return LayerCaptionResources_Access_Array_Access renames org.allbinary.game.layer.LayerCaptionResources_Package_References.Java_Unbox_LayerCaptionResources_Access_Array;
   subtype LayerCaptionResources_Access_Array_Access_Array is org.allbinary.game.layer.LayerCaptionResources_Package_References.LayerCaptionResources_Access_Array_Access_Array;
   function "=" (Left, Right : LayerCaptionResources_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.LayerCaptionResources_Package_References."=";
   subtype LayerCaptionResources_Access_Array_Access_Array_Access is org.allbinary.game.layer.LayerCaptionResources_Package_References.LayerCaptionResources_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerCaptionResources_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.LayerCaptionResources_Package_References."=";
   function Java_Box (Value : LayerCaptionResources_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.LayerCaptionResources_Package_References.Java_Box;
   function Java_Unbox_LayerCaptionResources_Access_Array_Access_Array (Value : access Java_Object'Class) return LayerCaptionResources_Access_Array_Access_Array_Access renames org.allbinary.game.layer.LayerCaptionResources_Package_References.Java_Unbox_LayerCaptionResources_Access_Array_Access_Array;

   type LayerCaptionResources is new Java_Object with record
      RESOURCE : Unbounded_String;
   end record;
   instance : LayerCaptionResources_Access;

   procedure Initialize (This : in out LayerCaptionResources'Class);
   function Create return LayerCaptionResources_Access;
   function getInstance return LayerCaptionResources_Access;

end org.allbinary.game.layer.LayerCaptionResources_Package;


