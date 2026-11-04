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

limited with org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory_Package;
package org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory_Package_References is
   type MakeCountedPartsSingletonArrayFactory_Access is access all org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory_Package.MakeCountedPartsSingletonArrayFactory'Class;
   type MakeCountedPartsSingletonArrayFactory_Access_Array is array (Natural range <>) of MakeCountedPartsSingletonArrayFactory_Access;
   type MakeCountedPartsSingletonArrayFactory_Access_Array_Access is access all MakeCountedPartsSingletonArrayFactory_Access_Array;
   type MakeCountedPartsSingletonArrayFactory_Access_Array_Access_Array is array (Natural range <>) of MakeCountedPartsSingletonArrayFactory_Access_Array_Access;
   type MakeCountedPartsSingletonArrayFactory_Access_Array_Access_Array_Access is access all MakeCountedPartsSingletonArrayFactory_Access_Array_Access_Array;
end org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory_Package_References;

with org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.game.part.PartInterface_Package;
with org.allbinary.game.part.PartInterface_Package_References;

package org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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


   subtype MakeCountedPartsSingletonArrayFactory_Access is org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory_Package_References.MakeCountedPartsSingletonArrayFactory_Access;
   function "=" (Left, Right : MakeCountedPartsSingletonArrayFactory_Access) return Boolean renames org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory_Package_References."=";
   subtype MakeCountedPartsSingletonArrayFactory_Access_Array is org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory_Package_References.MakeCountedPartsSingletonArrayFactory_Access_Array;
   function "=" (Left, Right : MakeCountedPartsSingletonArrayFactory_Access_Array) return Boolean renames org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory_Package_References."=";
   subtype MakeCountedPartsSingletonArrayFactory_Access_Array_Access is org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory_Package_References.MakeCountedPartsSingletonArrayFactory_Access_Array_Access;
   function "=" (Left, Right : MakeCountedPartsSingletonArrayFactory_Access_Array_Access) return Boolean renames org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory_Package_References."=";
   subtype MakeCountedPartsSingletonArrayFactory_Access_Array_Access_Array is org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory_Package_References.MakeCountedPartsSingletonArrayFactory_Access_Array_Access_Array;
   function "=" (Left, Right : MakeCountedPartsSingletonArrayFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory_Package_References."=";
   subtype MakeCountedPartsSingletonArrayFactory_Access_Array_Access_Array_Access is org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory_Package_References.MakeCountedPartsSingletonArrayFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MakeCountedPartsSingletonArrayFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory_Package_References."=";

   type MakeCountedPartsSingletonArrayFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      list : BasicArrayList_Access;
   end record;
   instance : MakeCountedPartsSingletonArrayFactory_Access;

   procedure Initialize (This : in out MakeCountedPartsSingletonArrayFactory'Class);
   function Create return MakeCountedPartsSingletonArrayFactory_Access;
   function getInstance return MakeCountedPartsSingletonArrayFactory_Access;
   function getUpdated (This : in out MakeCountedPartsSingletonArrayFactory; partInterfaceArray : PartInterface_Access_Array_Access) return PartInterface_Access_Array_Access;
   procedure getUpdated (This : in out MakeCountedPartsSingletonArrayFactory; partInterfaceArray : PartInterface_Access_Array_Access);

end org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory_Package;


