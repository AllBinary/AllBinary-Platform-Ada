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

limited with org.allbinary.game.layer.identification.GroupItemArrayFactoryInterface_Package;
package org.allbinary.game.layer.identification.GroupItemArrayFactoryInterface_Package_References is
   type GroupItemArrayFactoryInterface_Access is access all org.allbinary.game.layer.identification.GroupItemArrayFactoryInterface_Package.GroupItemArrayFactoryInterface'Class;
   type GroupItemArrayFactoryInterface_Access_Array is array (Natural range <>) of GroupItemArrayFactoryInterface_Access;
   type GroupItemArrayFactoryInterface_Access_Array_Access is access all GroupItemArrayFactoryInterface_Access_Array;
   type GroupItemArrayFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of GroupItemArrayFactoryInterface_Access_Array_Access;
   type GroupItemArrayFactoryInterface_Access_Array_Access_Array_Access is access all GroupItemArrayFactoryInterface_Access_Array_Access_Array;
end org.allbinary.game.layer.identification.GroupItemArrayFactoryInterface_Package_References;

with org.allbinary.game.layer.identification.GroupItemArrayFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;
limited with org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package_References;

package org.allbinary.game.layer.identification.GroupItemArrayFactoryInterface_Package is

   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package Reference_Types is
   subtype Group_Access is org.allbinary.game.identification.Group_Package_References.Group_Access;
   use type Group_Access;
   subtype Group_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array;
   use type Group_Access_Array;
   subtype Group_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access;
   use type Group_Access_Array_Access;
   subtype Group_Access_Array_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array;
   use type Group_Access_Array_Access_Array;
   subtype Group_Access_Array_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array_Access;
   use type Group_Access_Array_Access_Array_Access;
   subtype ABCustomItem_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access;
   use type ABCustomItem_Access;
   subtype ABCustomItem_Access_Array is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array;
   use type ABCustomItem_Access_Array;
   subtype ABCustomItem_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access;
   use type ABCustomItem_Access_Array_Access;
   subtype ABCustomItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access_Array;
   use type ABCustomItem_Access_Array_Access_Array;
   subtype ABCustomItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access_Array_Access;
   use type ABCustomItem_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type GroupItemArrayFactoryInterface is interface;
   subtype GroupItemArrayFactoryInterface_Access is org.allbinary.game.layer.identification.GroupItemArrayFactoryInterface_Package_References.GroupItemArrayFactoryInterface_Access;
   function "=" (Left, Right : GroupItemArrayFactoryInterface_Access) return Boolean renames org.allbinary.game.layer.identification.GroupItemArrayFactoryInterface_Package_References."=";
   subtype GroupItemArrayFactoryInterface_Access_Array is org.allbinary.game.layer.identification.GroupItemArrayFactoryInterface_Package_References.GroupItemArrayFactoryInterface_Access_Array;
   function "=" (Left, Right : GroupItemArrayFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.layer.identification.GroupItemArrayFactoryInterface_Package_References."=";
   subtype GroupItemArrayFactoryInterface_Access_Array_Access is org.allbinary.game.layer.identification.GroupItemArrayFactoryInterface_Package_References.GroupItemArrayFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : GroupItemArrayFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.identification.GroupItemArrayFactoryInterface_Package_References."=";
   subtype GroupItemArrayFactoryInterface_Access_Array_Access_Array is org.allbinary.game.layer.identification.GroupItemArrayFactoryInterface_Package_References.GroupItemArrayFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GroupItemArrayFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.identification.GroupItemArrayFactoryInterface_Package_References."=";
   subtype GroupItemArrayFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.identification.GroupItemArrayFactoryInterface_Package_References.GroupItemArrayFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GroupItemArrayFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.identification.GroupItemArrayFactoryInterface_Package_References."=";
   function Java_Object_Access_From_GroupItemArrayFactoryInterface (Value : GroupItemArrayFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out GroupItemArrayFactoryInterface; groupInterface_Param : access Group_Package.Group'Class) return ABCustomItem_Access_Array_Access is abstract;
   procedure getInstance (This : in out GroupItemArrayFactoryInterface; groupInterface_Param : access Group_Package.Group'Class) is abstract;

end org.allbinary.game.layer.identification.GroupItemArrayFactoryInterface_Package;


