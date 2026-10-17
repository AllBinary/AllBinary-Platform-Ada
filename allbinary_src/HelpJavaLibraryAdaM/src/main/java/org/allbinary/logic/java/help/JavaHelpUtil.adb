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


package body org.allbinary.logic.java.help.JavaHelpUtil_Package is

   procedure Initialize_Fields (This : in out JavaHelpUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.point := Point_Package.Create (0, 0);
      This.dimension := Dimension_Package.Create (640, 480);
      This.contextSensitiveHelpActionEvent := ActionEvent_Package.Create (JLabel_Package.Create, ActionEvent_Package.ACTION_FIRST, null);
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   function getInstance return JavaHelpUtil_Access is
   begin
        return JavaHelpUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out JavaHelpUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return JavaHelpUtil_Access is
      This : constant JavaHelpUtil_Access := new JavaHelpUtil;
   begin
      JavaHelpUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function getHelpSet (This : in out JavaHelpUtil; filePath : Unbounded_String) return HelpSet_Access is
      helpSetURI : URI_Access;
      helpSetURL : URL_Access;
   begin
        begin
            helpSetURI := File_Package.Create (filePath).toURI;
            helpSetURL := helpSetURI.toURL;
            return This.getHelpSet (helpSetURL);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, getInstance, To_Unbounded_String ("set"), e);
            return null;
                end;
        end;
   end getHelpSet;

   function getHelpSet (This : in out JavaHelpUtil; url : URL_Access) return HelpSet_Access is
   begin
        begin
            return HelpSet_Package.Create (null, url);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, getInstance, To_Unbounded_String ("set"), e);
            return null;
                end;
        end;
   end getHelpSet;

   procedure show (This : in out JavaHelpUtil; helpSet : HelpSet_Access) is
      helpBroker : HelpBroker_Access;
   begin
        begin
            helpBroker := helpSet.createHelpBroker;
            helpBroker.setLocation (This.point);
            helpBroker.setSize (This.dimension);
            DisplayHelpFromSource_Package.Create (helpBroker).actionPerformed (This.contextSensitiveHelpActionEvent);
            This.logUtil.putF (To_Unbounded_String ("CSH Action"), getInstance, To_Unbounded_String ("show"));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, getInstance, To_Unbounded_String ("show"), e);
                end;
        end;
   end show;

   procedure main (args : Unbounded_String_Array_Access) is
      javaHelpUtil : JavaHelpUtil_Access;
   begin
        begin
            javaHelpUtil := JavaHelpUtil_Package.getInstance;
            javaHelpUtil.show (javaHelpUtil.getHelpSet (To_Unbounded_String ("G:/mnt/bc/mydev/working/automation/InputAutomationJavaApplication/AllBinaryInputAutomationHelp/AllBinaryInputAutomation.hs")));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            null;
                end;
        end;
   end main;

   procedure getHelpSet (This : in out JavaHelpUtil; filePath : Unbounded_String) is
      Java_Result : constant HelpSet_Access := JavaHelpUtil'Class (This).getHelpSet (filePath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHelpSet;

   procedure getHelpSet (This : in out JavaHelpUtil; url : URL_Access) is
      Java_Result : constant HelpSet_Access := JavaHelpUtil'Class (This).getHelpSet (url);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHelpSet;

begin
   null;
   instance := JavaHelpUtil_Package.Create;

end org.allbinary.logic.java.help.JavaHelpUtil_Package;


