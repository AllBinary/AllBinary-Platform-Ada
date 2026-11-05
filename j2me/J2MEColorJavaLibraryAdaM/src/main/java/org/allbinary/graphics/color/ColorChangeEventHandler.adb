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


with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.graphics.color.ColorChangeEventHandler_Package is

   procedure Initialize_Fields (This : in out ColorChangeEventHandler'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ColorChangeEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ColorChangeEventHandler_Access is
      This : constant ColorChangeEventHandler_Access := new ColorChangeEventHandler;
   begin
      ColorChangeEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return ColorChangeEventHandler_Access is
   begin
        return ColorChangeEventHandler_Access (ColorChangeEventHandler_Package.eventHandler);
   end getInstance;

begin
   null;
   eventHandler := ColorChangeEventHandler_Package.Create;

end org.allbinary.graphics.color.ColorChangeEventHandler_Package;


