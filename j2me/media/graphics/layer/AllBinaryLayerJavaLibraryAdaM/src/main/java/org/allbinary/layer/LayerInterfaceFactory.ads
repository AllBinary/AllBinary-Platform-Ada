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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.layer.Layer_Package; use org.allbinary.layer.Layer_Package;
with org.allbinary.layer.LayerInterfaceFactoryInterface_Package; use org.allbinary.layer.LayerInterfaceFactoryInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;

package org.allbinary.layer.LayerInterfaceFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;

   type LayerInterfaceFactory is tagged;
   type LayerInterfaceFactory_Access is access all LayerInterfaceFactory'Class;
   type LayerInterfaceFactory_Access_Array is array (Natural range <>) of LayerInterfaceFactory_Access;
   type LayerInterfaceFactory_Access_Array_Access is access all LayerInterfaceFactory_Access_Array;

   type LayerInterfaceFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      list : BasicArrayList_Access;
      HASHTABLE_LABEL : Unbounded_String;
   end record;
   SINGLETON : LayerInterfaceFactory_Access;

   procedure Initialize (This : in out LayerInterfaceFactory'Class);
   function Create return LayerInterfaceFactory_Access;
   function getInstance return LayerInterfaceFactory_Access;
   procedure init (This : in out LayerInterfaceFactory);
   function getNexInstance (This : in out LayerInterfaceFactory; hashtable : ABHashtable_Access; x : Integer; y : Integer; z : Integer) return AllBinaryLayer_Access;
   procedure getNexInstance (This : in out LayerInterfaceFactory; hashtable : ABHashtable_Access; x : Integer; y : Integer; z : Integer);
   procedure add (This : in out LayerInterfaceFactory; layerInterfaceFactoryInterface : LayerInterfaceFactoryInterface_Access);

end org.allbinary.layer.LayerInterfaceFactory_Package;


