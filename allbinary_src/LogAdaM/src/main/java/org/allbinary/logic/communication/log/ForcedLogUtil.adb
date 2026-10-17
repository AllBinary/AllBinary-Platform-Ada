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


package body org.allbinary.logic.communication.log.ForcedLogUtil_Package is

   procedure Initialize_Fields (This : in out ForcedLogUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ForcedLogUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ForcedLogUtil_Access is
      This : constant ForcedLogUtil_Access := new ForcedLogUtil;
   begin
      ForcedLogUtil_Package.Initialize (This.all);
      return This;
   end Create;


   procedure log (message : Unbounded_String; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        begin
            Java_Throw (Java_New_Exception ("Exception", message));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putOE (CommonStrings_Package.getInstance.EXCEPTION_Id, anyType, To_Unbounded_String ("log"), e);
                end;
        end;
   end log;

end org.allbinary.logic.communication.log.ForcedLogUtil_Package;


