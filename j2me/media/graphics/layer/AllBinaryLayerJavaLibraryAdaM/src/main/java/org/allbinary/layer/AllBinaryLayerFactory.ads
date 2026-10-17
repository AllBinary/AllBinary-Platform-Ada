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
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.view.ViewPosition_Package; use org.allbinary.view.ViewPosition_Package;
with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package; use org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;

package org.allbinary.layer.AllBinaryLayerFactory_Package is

   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package ViewPosition_Package renames Standard.org.allbinary.view.ViewPosition_Package;

   type AllBinaryLayerFactory is tagged;
   type AllBinaryLayerFactory_Access is access all AllBinaryLayerFactory'Class;
   type AllBinaryLayerFactory_Access_Array is array (Natural range <>) of AllBinaryLayerFactory_Access;
   type AllBinaryLayerFactory_Access_Array_Access is access all AllBinaryLayerFactory_Access_Array;

   type AllBinaryLayerFactory is new AllBinaryLayerFactoryInterface with record
      rectangle : Rectangle_Access;
   end record;

   procedure Initialize (This : in out AllBinaryLayerFactory'Class; rectangle : Rectangle_Access);
   function Create (rectangle : Rectangle_Access) return AllBinaryLayerFactory_Access;
   function getInstance (This : in out AllBinaryLayerFactory) return AllBinaryLayer_Access;

end org.allbinary.layer.AllBinaryLayerFactory_Package;


