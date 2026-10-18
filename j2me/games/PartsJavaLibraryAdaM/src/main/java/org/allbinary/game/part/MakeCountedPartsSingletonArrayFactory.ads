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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.part.PartInterface_Package; use org.allbinary.game.part.PartInterface_Package;

package org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type MakeCountedPartsSingletonArrayFactory is tagged;
   type MakeCountedPartsSingletonArrayFactory_Access is access all MakeCountedPartsSingletonArrayFactory'Class;
   type MakeCountedPartsSingletonArrayFactory_Access_Array is array (Natural range <>) of MakeCountedPartsSingletonArrayFactory_Access;
   type MakeCountedPartsSingletonArrayFactory_Access_Array_Access is access all MakeCountedPartsSingletonArrayFactory_Access_Array;
   type MakeCountedPartsSingletonArrayFactory_Access_Array_Access_Array is array (Natural range <>) of MakeCountedPartsSingletonArrayFactory_Access_Array_Access;
   type MakeCountedPartsSingletonArrayFactory_Access_Array_Access_Array_Access is access all MakeCountedPartsSingletonArrayFactory_Access_Array_Access_Array;

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


