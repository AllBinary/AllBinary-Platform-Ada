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
with org.allbinary.logic.util.event.BasicEventListenerInterface_Package; use org.allbinary.logic.util.event.BasicEventListenerInterface_Package;

package org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package is

   package BasicEventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.BasicEventListenerInterface_Package;

   type MotionRectanglesResultsListener is interface and BasicEventListenerInterface;
   type MotionRectanglesResultsListener_Access is access all MotionRectanglesResultsListener'Class;
   type MotionRectanglesResultsListener_Access_Array is array (Natural range <>) of MotionRectanglesResultsListener_Access;
   type MotionRectanglesResultsListener_Access_Array_Access is access all MotionRectanglesResultsListener_Access_Array;
   procedure onMotionRectanglesImageComparisonResultsEvent (This : in out MotionRectanglesResultsListener; motionRectanglesImageComparisonResultsEvent : MotionRectanglesResultsEvent_Access) is abstract;

end org.allbinary.media.image.comparison.motion.MotionRectanglesResultsListener_Package;


