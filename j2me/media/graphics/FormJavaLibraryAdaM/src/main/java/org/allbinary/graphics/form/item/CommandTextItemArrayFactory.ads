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

limited with org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package;
package org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References is
   type CommandTextItemArrayFactory_Access is access all org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package.CommandTextItemArrayFactory'Class;
   type CommandTextItemArrayFactory_Access_Array is array (Natural range <>) of CommandTextItemArrayFactory_Access;
   type CommandTextItemArrayFactory_Access_Array_Access is access all CommandTextItemArrayFactory_Access_Array;
   type CommandTextItemArrayFactory_Access_Array_Access_Array is array (Natural range <>) of CommandTextItemArrayFactory_Access_Array_Access;
   type CommandTextItemArrayFactory_Access_Array_Access_Array_Access is access all CommandTextItemArrayFactory_Access_Array_Access_Array;
end org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References;

with org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.logic.util.visitor.Visitor_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package_References;

package org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype Visitor_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access;
   use type Visitor_Access;
   subtype Visitor_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array;
   use type Visitor_Access_Array;
   subtype Visitor_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access;
   use type Visitor_Access_Array_Access;
   subtype Visitor_Access_Array_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array;
   use type Visitor_Access_Array_Access_Array;
   subtype Visitor_Access_Array_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array_Access;
   use type Visitor_Access_Array_Access_Array_Access;
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


   subtype CommandTextItemArrayFactory_Access is org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References.CommandTextItemArrayFactory_Access;
   function "=" (Left, Right : CommandTextItemArrayFactory_Access) return Boolean renames org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References."=";
   subtype CommandTextItemArrayFactory_Access_Array is org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References.CommandTextItemArrayFactory_Access_Array;
   function "=" (Left, Right : CommandTextItemArrayFactory_Access_Array) return Boolean renames org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References."=";
   subtype CommandTextItemArrayFactory_Access_Array_Access is org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References.CommandTextItemArrayFactory_Access_Array_Access;
   function "=" (Left, Right : CommandTextItemArrayFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References."=";
   subtype CommandTextItemArrayFactory_Access_Array_Access_Array is org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References.CommandTextItemArrayFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CommandTextItemArrayFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References."=";
   subtype CommandTextItemArrayFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References.CommandTextItemArrayFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommandTextItemArrayFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References."=";

   type CommandTextItemArrayFactory is new Java_Object with record
      list : BasicArrayList_Access;
      visitorInterface : Visitor_Access;
   end record;

   procedure Initialize (This : in out CommandTextItemArrayFactory'Class; visitorInterface_Param : access Visitor_Package.Visitor'Class);
   function Create (visitorInterface_Param : access Visitor_Package.Visitor'Class) return CommandTextItemArrayFactory_Access;
   function getInstance (This : in out CommandTextItemArrayFactory; vector_Param : access Java_Object'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ABCustomItem_Access_Array_Access;
   procedure getInstance (This : in out CommandTextItemArrayFactory; vector_Param : access Java_Object'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package;


