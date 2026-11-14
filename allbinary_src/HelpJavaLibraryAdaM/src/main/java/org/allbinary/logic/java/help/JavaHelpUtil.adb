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
with java.net.URI_Package; use java.net.URI_Package;
with java.net.URL_Package; use java.net.URL_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.logic.java.help.Point_Package; use org.allbinary.logic.java.help.Point_Package;
with org.allbinary.logic.java.help.Point_Package_References;
with org.allbinary.logic.java.help.Dimension_Package; use org.allbinary.logic.java.help.Dimension_Package;
with org.allbinary.logic.java.help.Dimension_Package_References;
with org.allbinary.logic.java.help.JLabel_Package; use org.allbinary.logic.java.help.JLabel_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.logic.java.help.JavaHelpUtil_Package is

   package File_Package renames Standard.java.io.File_Package;
   package URI_Package renames Standard.java.net.URI_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype Point_Access is org.allbinary.logic.java.help.Point_Package_References.Point_Access;
   function "=" (Left, Right : Point_Access) return Boolean renames org.allbinary.logic.java.help.Point_Package_References."=";
   subtype Point_Access_Array is org.allbinary.logic.java.help.Point_Package_References.Point_Access_Array;
   function "=" (Left, Right : Point_Access_Array) return Boolean renames org.allbinary.logic.java.help.Point_Package_References."=";
   subtype Point_Access_Array_Access is org.allbinary.logic.java.help.Point_Package_References.Point_Access_Array_Access;
   function "=" (Left, Right : Point_Access_Array_Access) return Boolean renames org.allbinary.logic.java.help.Point_Package_References."=";
   subtype Point_Access_Array_Access_Array is org.allbinary.logic.java.help.Point_Package_References.Point_Access_Array_Access_Array;
   function "=" (Left, Right : Point_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.help.Point_Package_References."=";
   subtype Point_Access_Array_Access_Array_Access is org.allbinary.logic.java.help.Point_Package_References.Point_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Point_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.help.Point_Package_References."=";
   subtype Dimension_Access is org.allbinary.logic.java.help.Dimension_Package_References.Dimension_Access;
   function "=" (Left, Right : Dimension_Access) return Boolean renames org.allbinary.logic.java.help.Dimension_Package_References."=";
   subtype Dimension_Access_Array is org.allbinary.logic.java.help.Dimension_Package_References.Dimension_Access_Array;
   function "=" (Left, Right : Dimension_Access_Array) return Boolean renames org.allbinary.logic.java.help.Dimension_Package_References."=";
   subtype Dimension_Access_Array_Access is org.allbinary.logic.java.help.Dimension_Package_References.Dimension_Access_Array_Access;
   function "=" (Left, Right : Dimension_Access_Array_Access) return Boolean renames org.allbinary.logic.java.help.Dimension_Package_References."=";
   subtype Dimension_Access_Array_Access_Array is org.allbinary.logic.java.help.Dimension_Package_References.Dimension_Access_Array_Access_Array;
   function "=" (Left, Right : Dimension_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.help.Dimension_Package_References."=";
   subtype Dimension_Access_Array_Access_Array_Access is org.allbinary.logic.java.help.Dimension_Package_References.Dimension_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Dimension_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.help.Dimension_Package_References."=";
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
            return JavaHelpUtil'Class (This).getHelpSet (helpSetURL);
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

   function getHelpSet (This : in out JavaHelpUtil; url_Param : access URL_Package.URL'Class) return HelpSet_Access is
      url : constant URL_Access := URL_Access (url_Param);
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

   procedure show (This : in out JavaHelpUtil; helpSet_Param : access HelpSet_Package.HelpSet'Class) is
      helpSet : constant HelpSet_Access := HelpSet_Access (helpSet_Param);
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
      javaHelpUtil_Var : JavaHelpUtil_Access;
   begin
        begin
            javaHelpUtil_Var := JavaHelpUtil_Package.getInstance;
            javaHelpUtil_Var.show (javaHelpUtil_Var.getHelpSet (To_Unbounded_String ("G:/mnt/bc/mydev/working/automation/InputAutomationJavaApplication/AllBinaryInputAutomationHelp/AllBinaryInputAutomation.hs")));
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
      Java_Result : constant HelpSet_Access := JavaHelpUtil'Class (This).getHelpSet (filePath => filePath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHelpSet;

   procedure getHelpSet (This : in out JavaHelpUtil; url_Param : access URL_Package.URL'Class) is
      Java_Result : constant HelpSet_Access := JavaHelpUtil'Class (This).getHelpSet (url_Param => url_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHelpSet;

begin
   null;
   instance := JavaHelpUtil_Package.Create;

end org.allbinary.logic.java.help.JavaHelpUtil_Package;


