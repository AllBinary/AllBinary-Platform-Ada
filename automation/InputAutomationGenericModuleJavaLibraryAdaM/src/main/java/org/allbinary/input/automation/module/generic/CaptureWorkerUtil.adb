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


with org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package; use org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.input.automation.module.generic_Id.CaptureWorkerUtil_Package is

   package ProfileActionScriptConditionInterface_Package renames Standard.org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out CaptureWorkerUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CaptureWorkerUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CaptureWorkerUtil_Access is
      This : constant CaptureWorkerUtil_Access := new CaptureWorkerUtil;
   begin
      CaptureWorkerUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure processProfileActionConditions (vector_Param : access BasicArrayList_Package.BasicArrayList'Class; frame : Long_Long_Integer) is
      vector : constant BasicArrayList_Access := BasicArrayList_Access (vector_Param);
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      size : Integer;
      profileActionConditionInterface : ProfileActionScriptConditionInterface_Access;
      index : Integer;
   begin
        logUtil := LogUtil_Package.getInstance;
        commonStrings := CommonStrings_Package.getInstance;
        logUtil.putF (commonStrings.START, To_Unbounded_String ("CaptureWorkerUtil"), To_Unbounded_String ("processProfileActionConditions"));
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            profileActionConditionInterface := ProfileActionScriptConditionInterface_Access (vector.get (index));
            if profileActionConditionInterface.shouldProcess (frame) then
                profileActionConditionInterface.process (frame);
            else
                null;
            end if;
        end loop;
   end processProfileActionConditions;

end org.allbinary.input.automation.module.generic_Id.CaptureWorkerUtil_Package;


