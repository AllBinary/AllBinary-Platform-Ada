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


package body org.allbinary.logic.control.workflow.StoreWorkFlowWrapper_Package is

   procedure Initialize_Fields (This : in out StoreWorkFlowWrapper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out StoreWorkFlowWrapper'Class; anyType : Java_Object_Access) is
   begin
        WorkFlowWrapper_Package.Initialize (This, anyType);
        Initialize_Fields (This);
   end Initialize;

   function Create (anyType : Java_Object_Access) return StoreWorkFlowWrapper_Access is
      This : constant StoreWorkFlowWrapper_Access := new StoreWorkFlowWrapper;
   begin
      StoreWorkFlowWrapper_Package.Initialize (This.all, anyType);
      return This;
   end Create;

   --  throws Exception
   function getStoreName (This : in out StoreWorkFlowWrapper) return Unbounded_String is
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
      commonStrings : CommonStrings_Access;
   begin
        begin
            helperClass := This.getWorkFlowObject.all'Tag;
            method := helperClass.getMethod (To_Unbounded_String ("getStoreName"), null);
            result := Unbounded_String (method.invoke (This.getWorkFlowObject, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Reflection Exception");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getStoreName()"), e);
            end if;
            Java_Throw (Java_New_Exception ("Exception", error));
                end;
        end;
   end getStoreName;

end org.allbinary.logic.control.workflow.StoreWorkFlowWrapper_Package;


