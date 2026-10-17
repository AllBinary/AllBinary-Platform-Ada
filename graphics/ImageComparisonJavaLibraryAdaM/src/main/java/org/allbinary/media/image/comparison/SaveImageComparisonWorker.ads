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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package; use org.allbinary.media.image.comparison.ImageComparisonResultsListener_Package;

package org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type SaveImageComparisonWorker is tagged;
   type SaveImageComparisonWorker_Access is access all SaveImageComparisonWorker'Class;
   type SaveImageComparisonWorker_Access_Array is array (Natural range <>) of SaveImageComparisonWorker_Access;
   type SaveImageComparisonWorker_Access_Array_Access is access all SaveImageComparisonWorker_Access_Array;

   type SaveImageComparisonWorker is new ImageComparisonResultsListener with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      running : Boolean;
      imageComparisonInfoVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out SaveImageComparisonWorker'Class);
   function Create return SaveImageComparisonWorker_Access;
   procedure onImageComparisonResultsEvent (This : in out SaveImageComparisonWorker; imageComparisonResultsEvent : ImageComparisonResultsEvent_Access);
   procedure onEvent (This : in out SaveImageComparisonWorker; allBinaryEventObject : AllBinaryEventObject_Access);
   function isRunning (This : in out SaveImageComparisonWorker) return Boolean;
   procedure isRunning (This : in out SaveImageComparisonWorker);
   procedure setRunning (This : in out SaveImageComparisonWorker; running : Boolean);
   procedure run (This : in out SaveImageComparisonWorker);

end org.allbinary.media.image.comparison.SaveImageComparisonWorker_Package;


