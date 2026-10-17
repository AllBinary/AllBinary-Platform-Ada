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


package body tags.admin.WorkFlowsTag_Package is

   procedure Initialize_Fields (This : in out WorkFlowsTag'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out WorkFlowsTag'Class) is
   begin
      StoreValidationTransformTag_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return WorkFlowsTag_Access is
      This : constant WorkFlowsTag_Access := new WorkFlowsTag;
   begin
      WorkFlowsTag_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws JspTagException
   function doStartTag (This : in out WorkFlowsTag) return Integer is
   begin
        begin
            if (This.getCommand) /= (null) then
                if (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.NEW_Id)) = (0) then
                    This.setName (To_Unbounded_String ("New WorkFlow View"));
                    This.setObjectFile (To_Unbounded_String ("views.admin.workflow.NewView"));
                elsif (This.getCommand.compareTo (This.commonStrings.INSERT)) = (0) then
                    This.setName (To_Unbounded_String ("Add Validation WorkFlow View"));
                    This.setObjectFile (To_Unbounded_String ("views.admin.workflow.AddValidationView"));
                elsif (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.VIEW)) = (0) then
                    This.setName (To_Unbounded_String ("Validation WorkFlow View"));
                    This.setObjectFile (To_Unbounded_String ("views.admin.workflow.WorkflowsValidationView"));
                elsif (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.EDIT)) = (0) then
                    This.setName (To_Unbounded_String ("Validation WorkFlow View"));
                    This.setObjectFile (To_Unbounded_String ("views.admin.workflow.EditValidationView"));
                elsif (This.getCommand.compareTo (This.commonStrings.UPDATE)) = (0) then
                    This.setName (To_Unbounded_String ("Update Validation WorkFlow View"));
                    This.setObjectFile (To_Unbounded_String ("views.admin.workflow.UpdateValidationView"));
                elsif (This.getCommand.compareTo (This.commonStrings.DELETE)) = (0) then
                    This.setName (To_Unbounded_String ("Delete Validation WorkFlow View"));
                    This.setObjectFile (To_Unbounded_String ("views.admin.workflow.DeleteValidationView"));
                elsif (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.BACKUP)) = (0) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("View not implemented")));
                elsif (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.RESTORE)) = (0) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("View not implemented")));
                elsif (This.getCommand.compareTo (This.commonStrings.DROP)) = (0) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("View not implemented")));
                elsif (This.getCommand.compareTo (This.commonStrings.CREATE)) = (0) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("View not implemented")));
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such View Command: ") & Java_Image (This.getCommand)));
                end if;
                return StoreValidationTransformTag (This).doStartTag;
            end if;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Command Null")));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            AbResponseHandler_Package.sendJspTagRedirect (This.pageContext, e);
            return SKIP_BODY;
                end;
        end;
   end doStartTag;

end tags.admin.WorkFlowsTag_Package;


