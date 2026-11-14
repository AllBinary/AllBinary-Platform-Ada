-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
limited with org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package;
package org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package_References is
   type CapitalEventHandlerFactory_Access is access all org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package.CapitalEventHandlerFactory'Class;
   type CapitalEventHandlerFactory_Access_Array is array (Natural range <>) of CapitalEventHandlerFactory_Access;
   type CapitalEventHandlerFactory_Access_Array_Access is access all CapitalEventHandlerFactory_Access_Array;
   type CapitalEventHandlerFactory_Access_Array_Access_Array is array (Natural range <>) of CapitalEventHandlerFactory_Access_Array_Access;
   type CapitalEventHandlerFactory_Access_Array_Access_Array_Access is access all CapitalEventHandlerFactory_Access_Array_Access_Array;
   type CapitalEventHandlerFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CapitalEventHandlerFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : CapitalEventHandlerFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CapitalEventHandlerFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CapitalEventHandlerFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CapitalEventHandlerFactory_Access_Array_Access is (if Value /= null and then Value.all in CapitalEventHandlerFactory_Access_Array_Object'Class then CapitalEventHandlerFactory_Access_Array_Object'Class (Value.all).Value else null);
   type CapitalEventHandlerFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CapitalEventHandlerFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CapitalEventHandlerFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CapitalEventHandlerFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CapitalEventHandlerFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CapitalEventHandlerFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CapitalEventHandlerFactory_Access_Array_Access_Array_Object'Class then CapitalEventHandlerFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package_References;

with org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package_References;
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
limited with org.allbinary.game.layer.capital.event.CapitalEventHandler_Package;
with org.allbinary.game.layer.capital.event.CapitalEventHandler_Package_References;

package org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package is

   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
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
   subtype CapitalEventHandler_Access is org.allbinary.game.layer.capital.event.CapitalEventHandler_Package_References.CapitalEventHandler_Access;
   use type CapitalEventHandler_Access;
   subtype CapitalEventHandler_Access_Array is org.allbinary.game.layer.capital.event.CapitalEventHandler_Package_References.CapitalEventHandler_Access_Array;
   use type CapitalEventHandler_Access_Array;
   subtype CapitalEventHandler_Access_Array_Access is org.allbinary.game.layer.capital.event.CapitalEventHandler_Package_References.CapitalEventHandler_Access_Array_Access;
   use type CapitalEventHandler_Access_Array_Access;
   subtype CapitalEventHandler_Access_Array_Access_Array is org.allbinary.game.layer.capital.event.CapitalEventHandler_Package_References.CapitalEventHandler_Access_Array_Access_Array;
   use type CapitalEventHandler_Access_Array_Access_Array;
   subtype CapitalEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.layer.capital.event.CapitalEventHandler_Package_References.CapitalEventHandler_Access_Array_Access_Array_Access;
   use type CapitalEventHandler_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CapitalEventHandlerFactory_Access is org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package_References.CapitalEventHandlerFactory_Access;
   function "=" (Left, Right : CapitalEventHandlerFactory_Access) return Boolean renames org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package_References."=";
   subtype CapitalEventHandlerFactory_Access_Array is org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package_References.CapitalEventHandlerFactory_Access_Array;
   function "=" (Left, Right : CapitalEventHandlerFactory_Access_Array) return Boolean renames org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package_References."=";
   subtype CapitalEventHandlerFactory_Access_Array_Access is org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package_References.CapitalEventHandlerFactory_Access_Array_Access;
   function "=" (Left, Right : CapitalEventHandlerFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package_References."=";
   function Java_Box (Value : CapitalEventHandlerFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package_References.Java_Box;
   function Java_Unbox_CapitalEventHandlerFactory_Access_Array (Value : access Java_Object'Class) return CapitalEventHandlerFactory_Access_Array_Access renames org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package_References.Java_Unbox_CapitalEventHandlerFactory_Access_Array;
   subtype CapitalEventHandlerFactory_Access_Array_Access_Array is org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package_References.CapitalEventHandlerFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CapitalEventHandlerFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package_References."=";
   subtype CapitalEventHandlerFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package_References.CapitalEventHandlerFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CapitalEventHandlerFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package_References."=";
   function Java_Box (Value : CapitalEventHandlerFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package_References.Java_Box;
   function Java_Unbox_CapitalEventHandlerFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return CapitalEventHandlerFactory_Access_Array_Access_Array_Access renames org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package_References.Java_Unbox_CapitalEventHandlerFactory_Access_Array_Access_Array;

   type CapitalEventHandlerFactory is new Java_Object with null record;
   capitalEventHandlerArray : CapitalEventHandler_Access_Array_Access;

   procedure Initialize (This : in out CapitalEventHandlerFactory'Class);
   function Create return CapitalEventHandlerFactory_Access;
   function getInstance (groupInterface_Param : access Group_Package.Group'Class) return CapitalEventHandler_Access;
   procedure getInstance (groupInterface_Param : access Group_Package.Group'Class);
   procedure removeAll;

end org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory_Package;


