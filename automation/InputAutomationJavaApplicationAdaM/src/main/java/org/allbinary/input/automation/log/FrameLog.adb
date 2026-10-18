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


with java.io.File_Package; use java.io.File_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.input.automation.ImageOutputData_Package; use org.allbinary.input.automation.ImageOutputData_Package;
with org.allbinary.logic.java.number.LongUtil_Package; use org.allbinary.logic.java.number.LongUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package body org.allbinary.input.automation.log.FrameLog_Package is

   package File_Package renames Standard.java.io.File_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package ImageOutputData_Package renames Standard.org.allbinary.input.automation.ImageOutputData_Package;
   package LongUtil_Package renames Standard.org.allbinary.logic.java.number.LongUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out FrameLog'Class) is
   begin
      null;
      
      This.infoStringBuffer := StringMaker_Package.Create;
      This.actionsStringBuffer := StringMaker_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out FrameLog'Class; frame : Long_Long_Integer) is
   begin
      Initialize_Fields (This);
        This.frame := frame;
   end Initialize;

   function Create (frame : Long_Long_Integer) return FrameLog_Access is
      This : constant FrameLog_Access := new FrameLog;
   begin
      FrameLog_Package.Initialize (This.all, frame);
      return This;
   end Create;

   procedure addInfo (This : in out FrameLog; infoString : Unbounded_String) is
   begin
        This.infoStringBuffer.append (infoString);
   end addInfo;

   procedure addActions (This : in out FrameLog; vectorOfStrings_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      vectorOfStrings : constant BasicArrayList_Access := BasicArrayList_Access (vectorOfStrings_Param);
      size : Integer;
      index : Integer;
   begin
        size := vectorOfStrings.size;
        for index in 0 .. (size) - 1 loop
            FrameLog'Class (This).addAction (Java_Unbox (vectorOfStrings.get (index)));
        end loop;
   end addActions;

   procedure addAction (This : in out FrameLog; action : Unbounded_String) is
   begin
        This.actionsStringBuffer.append (action);
        This.actionsStringBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
   end addAction;

   --  throws Exception
   procedure write (This : in out FrameLog) is
      filePathStringBuffer : StringMaker_Access;
      filePath : Unbounded_String;
      fileOutputStream : FileOutputStream_Access;
   begin
        filePathStringBuffer := StringMaker_Package.Create;
        filePathStringBuffer.append (ImageOutputData_Package.SAVE_PATH);
        filePathStringBuffer.append (LongUtil_Package.fillIn (To_Unbounded_String (Java_Image (This.frame))));
        filePathStringBuffer.append (To_Unbounded_String (".txt"));
        filePath := filePathStringBuffer.toString;
        fileOutputStream := FileOutputStream_Package.Create (File_Package.Create (filePath));
        fileOutputStream.write (FrameLog_Package.frameBytes);
        fileOutputStream.write (FrameLog'Class (This).getFrame.toString.getBytes);
        fileOutputStream.write (ASCII.LF);
        fileOutputStream.write (FrameLog_Package.info);
        fileOutputStream.write (This.infoStringBuffer.toString.getBytes);
        fileOutputStream.write (ASCII.LF);
        fileOutputStream.write (FrameLog_Package.actions);
        fileOutputStream.write (This.actionsStringBuffer.toString.getBytes);
        fileOutputStream.close;
   end write;

   function getFrame (This : in out FrameLog) return Long_Long_Integer is
   begin
        return This.frame;
   end getFrame;

begin
   null;
   frameBytes := Java_New_String (To_Unbounded_String ("Frame: ")).getBytes;
   info := Java_New_String (To_Unbounded_String ("Info: " & ASCII.LF & "")).getBytes;
   actions := Java_New_String (To_Unbounded_String ("Actions: " & ASCII.LF & "")).getBytes;

end org.allbinary.input.automation.log.FrameLog_Package;


