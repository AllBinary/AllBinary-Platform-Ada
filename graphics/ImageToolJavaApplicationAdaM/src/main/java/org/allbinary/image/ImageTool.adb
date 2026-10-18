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


with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
with org.allbinary.image.gui.ImageToolJFrame_Package; use org.allbinary.image.gui.ImageToolJFrame_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.image.ImageTool_Package is

   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package ImageToolJFrame_Package renames Standard.org.allbinary.image.gui.ImageToolJFrame_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out ImageTool'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageTool'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageTool_Access is
      This : constant ImageTool_Access := new ImageTool;
   begin
      ImageTool_Package.Initialize (This.all);
      return This;
   end Create;

   procedure main (args : Unbounded_String_Array_Access) is
   begin
        java_Package.awt.EventQueue.invokeLater (ARunnable_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure run (This : in out ) is
--        logUtil : LogUtil_Access;
--        commonStrings : CommonStrings_Access;
--     begin
--                  logUtil := LogUtil_Package.getInstance;
--                  commonStrings := CommonStrings_Package.getInstance;
--                  begin
--                      logUtil.putF (commonStrings.START, ImageTool_Access'(This'Unchecked_Access), commonStrings.RUN);
--                      ImageToolJFrame_Package.Create.setVisible (True);
--                  exception
--                      when Java_Occurrence : others =>
--                          declare
--                              e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
--                          begin
--                      logUtil.put (commonStrings.EXCEPTION_Id, ImageTool_Access'(This'Unchecked_Access), commonStrings.RUN, e);
--                          end;
--                  end;
--     end run;
);
   end main;

end org.allbinary.image.ImageTool_Package;


