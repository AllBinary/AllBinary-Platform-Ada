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


with org.allbinary.graphics.j2me.StatusFactory_Package; use org.allbinary.graphics.j2me.StatusFactory_Package;
with org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package; use org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package;

package body org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package is

   package StatusFactory_Package renames Standard.org.allbinary.graphics.j2me.StatusFactory_Package;
   procedure Initialize_Fields (This : in out ToolFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.selectedTool := null;
      This.tool := Null_Unbounded_String;
      This.SELECTED_LABEL := To_Unbounded_String ("Selected: ");
   end Initialize_Fields;

   procedure Initialize (This : in out ToolFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ToolFactory_Access is
      This : constant ToolFactory_Access := new ToolFactory;
   begin
      ToolFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ToolFactory_Access is
   begin
        return ToolFactory_Package.instance;
   end getInstance;

   procedure setSelectedTool (This : in out ToolFactory; tool : Unbounded_String) is
   begin
        begin
            StatusFactory_Package.getInstance.setStatus (This.SELECTED_LABEL & tool);
            This.tool := tool;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ToolFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("setSelectionTool"), e);
                end;
        end;
   end setSelectedTool;

   function getSelectedToolFactory (This : in out ToolFactory) return GraphicsItemInterfaceFactoryInterface_Access is
   begin
        StatusFactory_Package.getInstance.setStatus (To_Unbounded_String ("Tool In Use: ") & This.tool);
        if (This.tool) /= (Null_Unbounded_String) then
            This.selectedTool := GraphicItemFactory_Package.getInstance.getInstance (This.tool);
            This.logUtil.putF (To_Unbounded_String ("New Tool: ") & Java_Image (This.selectedTool), ToolFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getSelectedToolFactory"));
            return This.selectedTool;
        else
            return null;
        end if;
   end getSelectedToolFactory;

begin
   null;
   instance := ToolFactory_Package.Create;

end org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package;


