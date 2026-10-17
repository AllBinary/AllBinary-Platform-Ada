-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

package javax.microedition.lcdui.ChoiceGroupImageFactory_Package is


   type ChoiceGroupImageFactory is tagged;
   type ChoiceGroupImageFactory_Access is access all ChoiceGroupImageFactory'Class;
   type ChoiceGroupImageFactory_Access_Array is array (Natural range <>) of ChoiceGroupImageFactory_Access;
   type ChoiceGroupImageFactory_Access_Array_Access is access all ChoiceGroupImageFactory_Access_Array;

   type ChoiceGroupImageFactory is new Java_Object with record
      multiOff : Short_Short_Integer_Array_Access;
      multiOn : Short_Short_Integer_Array_Access;
      radioOff : Short_Short_Integer_Array_Access;
      radioOn : Short_Short_Integer_Array_Access;
      imgMultiOffO : Image_Access;
      imgMultiOnO : Image_Access;
      imgRadioOffO : Image_Access;
      imgRadioOnO : Image_Access;
      imgMultiOff : Image_Access;
      imgMultiOn : Image_Access;
      imgRadioOff : Image_Access;
      imgRadioOn : Image_Access;
      imageArray : Image_Access_Array_Access;
   end record;
   instance : ChoiceGroupImageFactory_Access;

   procedure Initialize (This : in out ChoiceGroupImageFactory'Class);
   function Create return ChoiceGroupImageFactory_Access;
   function getInstance return ChoiceGroupImageFactory_Access;
   procedure getInstance;
   function getImageArray (This : in out ChoiceGroupImageFactory) return Image_Access_Array_Access;
   procedure getImageArray (This : in out ChoiceGroupImageFactory);
   procedure init (This : in out ChoiceGroupImageFactory; imageArray : Image_Access_Array_Access);

end javax.microedition.lcdui.ChoiceGroupImageFactory_Package;


