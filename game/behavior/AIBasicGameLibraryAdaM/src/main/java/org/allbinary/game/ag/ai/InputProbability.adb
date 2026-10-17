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


package body org.allbinary.game.ag.ai.InputProbability_Package is

   procedure Initialize_Fields (This : in out InputProbability'Class) is
   begin
      null;
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out InputProbability'Class; likelyhoodIntegerArray : Integer_Array_Access_Array_Access; repeatLikelyhoodIntegerArray : Integer_Array_Access; max : Integer; timeDelayHelper : TimeDelayHelper_Access) is
   begin
      Initialize_Fields (This);
        This.likelyhoodIntegerArray := likelyhoodIntegerArray;
        This.repeatLikelyhoodIntegerArray := repeatLikelyhoodIntegerArray;
        This.max := max;
        This.timeDelayHelper := timeDelayHelper;
   end Initialize;

   function Create (likelyhoodIntegerArray : Integer_Array_Access_Array_Access; repeatLikelyhoodIntegerArray : Integer_Array_Access; max : Integer; timeDelayHelper : TimeDelayHelper_Access) return InputProbability_Access is
      This : constant InputProbability_Access := new InputProbability;
   begin
      Initialize (This.all, likelyhoodIntegerArray, repeatLikelyhoodIntegerArray, max, timeDelayHelper);
      return This;
   end Create;

   function getLikelyhoodIntegerArray (This : in out InputProbability) return Integer_Array_Access_Array_Access is
   begin
        return This.likelyhoodIntegerArray;
   end getLikelyhoodIntegerArray;

   function getRepeatLikelyhoodIntegerArray (This : in out InputProbability) return Integer_Array_Access is
   begin
        return This.repeatLikelyhoodIntegerArray;
   end getRepeatLikelyhoodIntegerArray;

   function getMax (This : in out InputProbability) return Integer is
   begin
        return This.max;
   end getMax;

   function getTimeDelayHelper (This : in out InputProbability) return TimeDelayHelper_Access is
   begin
        return This.timeDelayHelper;
   end getTimeDelayHelper;

   function toHashtable (This : in out InputProbability) return ABHashtable_Access is
      hashtable : ABHashtable_Access;
   begin
        hashtable := StdUtil_Package.getInstance.createHashtable;
        hashtable.put (InputProbability_Package.INPUT_PROBABILITY, This'Unchecked_Access);
        return hashtable;
   end toHashtable;

   procedure getLikelyhoodIntegerArray (This : in out InputProbability) is
      Java_Result : constant Integer_Array_Access_Array_Access := InputProbability'Class (This).getLikelyhoodIntegerArray;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLikelyhoodIntegerArray;

   procedure getRepeatLikelyhoodIntegerArray (This : in out InputProbability) is
      Java_Result : constant Integer_Array_Access := InputProbability'Class (This).getRepeatLikelyhoodIntegerArray;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRepeatLikelyhoodIntegerArray;

   procedure getMax (This : in out InputProbability) is
      Java_Result : constant Integer := InputProbability'Class (This).getMax;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMax;

   procedure getTimeDelayHelper (This : in out InputProbability) is
      Java_Result : constant TimeDelayHelper_Access := InputProbability'Class (This).getTimeDelayHelper;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTimeDelayHelper;

   procedure toHashtable (This : in out InputProbability) is
      Java_Result : constant ABHashtable_Access := InputProbability'Class (This).toHashtable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashtable;

begin
   null;
   INPUT_PROBABILITY := SmallIntegerSingletonFactory_Package.getInstance.getAt (0);

end org.allbinary.game.ag.ai.InputProbability_Package;


