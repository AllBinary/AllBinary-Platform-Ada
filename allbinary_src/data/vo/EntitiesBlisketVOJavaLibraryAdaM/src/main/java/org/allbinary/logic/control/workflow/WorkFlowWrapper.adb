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



package body org.allbinary.logic.control.workflow.WorkFlowWrapper_Package is

   procedure Initialize_Fields (This : in out WorkFlowWrapper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out WorkFlowWrapper'Class; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
      Initialize_Fields (This);
        This.anyType := anyType;
   end Initialize;

   function Create (anyType_Param : access Java_Object'Class) return WorkFlowWrapper_Access is
      This : constant WorkFlowWrapper_Access := new WorkFlowWrapper;
   begin
      WorkFlowWrapper_Package.Initialize (This.all, anyType_Param);
      return This;
   end Create;

   function getWorkFlowObject (This : in out WorkFlowWrapper) return Java_Object_Access is
   begin
        return This.anyType;
   end getWorkFlowObject;

   --  throws Exception
   function getName (This : in out WorkFlowWrapper) return Unbounded_String is
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            helperClass := This.anyType.all'Tag;
            method := helperClass.getMethod (To_Unbounded_String ("getName"), null);
            result := Java_Unbox (method.invoke (This.anyType, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Reflection Exception");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, WorkFlowWrapper_Access'(This'Unchecked_Access), To_Unbounded_String ("getName()"), e);
            end if;
            Java_Throw (Java_New_Exception ("Exception", error));
                end;
        end;
   end getName;

   --  throws Exception
   function getStoreName (This : in out WorkFlowWrapper) return Unbounded_String is
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            helperClass := This.anyType.all'Tag;
            method := helperClass.getMethod (To_Unbounded_String ("getStoreName"), null);
            result := Java_Unbox (method.invoke (This.anyType, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Reflection Exception");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, WorkFlowWrapper_Access'(This'Unchecked_Access), To_Unbounded_String ("getStoreName()"), e);
            end if;
            Java_Throw (Java_New_Exception ("Exception", error));
                end;
        end;
   end getStoreName;

   --  throws Exception
   function process (This : in out WorkFlowWrapper) return Integer is
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Integer;
      error : Unbounded_String;
   begin
        begin
            helperClass := This.anyType.all'Tag;
            method := helperClass.getMethod (This.commonStrings.PROCESS, null);
            result := Java_Unbox_Integer (method.invoke (This.anyType, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Reflection Exception");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, WorkFlowWrapper_Access'(This'Unchecked_Access), This.commonStrings.PROCESS, e);
            end if;
            Java_Throw (Java_New_Exception ("Exception", error));
                end;
        end;
   end process;

end org.allbinary.logic.control.workflow.WorkFlowWrapper_Package;


