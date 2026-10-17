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
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;

package org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package is

   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;

   type ArtificialIntelligenceInterfaceFactoryInterfaceFactory is tagged;
   type ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access is access all ArtificialIntelligenceInterfaceFactoryInterfaceFactory'Class;
   type ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access_Array is array (Natural range <>) of ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access;
   type ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access_Array_Access is access all ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access_Array;

   type ArtificialIntelligenceInterfaceFactoryInterfaceFactory is new Java_Object with record
      list : BasicArrayList_Access;
   end record;
   SINGLETON : ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access;

   procedure Initialize (This : in out ArtificialIntelligenceInterfaceFactoryInterfaceFactory'Class);
   function Create return ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access;
   procedure clear (This : in out ArtificialIntelligenceInterfaceFactoryInterfaceFactory);
   function getInstance return ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Access;
   procedure getInstance;
   function getInstanceFromCollection (This : in out ArtificialIntelligenceInterfaceFactoryInterfaceFactory; hashtable : ABHashtable_Access) return ArtificialIntelligenceInterfaceFactoryInterface_Access;
   procedure getInstanceFromCollection (This : in out ArtificialIntelligenceInterfaceFactoryInterfaceFactory; hashtable : ABHashtable_Access);
   procedure add (This : in out ArtificialIntelligenceInterfaceFactoryInterfaceFactory; artificialIntelligenceInterfaceFactoryInterface : ArtificialIntelligenceInterfaceFactoryInterface_Access);

end org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory_Package;


