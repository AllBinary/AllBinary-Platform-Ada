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


package body org.allbinary.logic.io.SmallInsert_Package is

   procedure Initialize_Fields (This : in out SmallInsert'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out SmallInsert'Class; fileName : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.fileName := fileName;
        This.string_Id := AbFileSystem_Package.getInstance.readAsString (fileName);
   end Initialize;

   function Create (fileName : Unbounded_String) return SmallInsert_Access is
      This : constant SmallInsert_Access := new SmallInsert;
   begin
      SmallInsert_Package.Initialize (This.all, fileName);
      return This;
   end Create;

   function atBeginning (This : in out SmallInsert; text : Unbounded_String) return Boolean is
      idFile : FileOutputStream_Access;
      idOutData : DataOutputStream_Access;
   begin
        begin
            idFile := FileOutputStream_Package.Create (This.fileName);
            idOutData := DataOutputStream_Package.Create (idFile);
            idOutData.writeBytes (text & This.string_Id);
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.IDLOGGING) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, SmallInsert_Access'(This'Unchecked_Access), To_Unbounded_String ("insertAtBeginning"), e);
            end if;
            return False;
                end;
        end;
   end atBeginning;

   function after (This : in out SmallInsert; text : Unbounded_String; after : Unbounded_String) return Boolean is
      index : Integer;
      start : Unbounded_String;
      end_Id : Unbounded_String;
      idFile : FileOutputStream_Access;
      idOutData : DataOutputStream_Access;
   begin
        begin
            index := (Index (This.string_Id, To_String (after)) - 1);
            if (index) < (0) then
                Ada.Text_IO.Put_Line (Java_Image (To_Unbounded_String ("No such start: ") & after & To_Unbounded_String (" in: ") & This.string_Id));
                return False;
            end if;
            index := (index) + (Length (after));
            start := Unbounded_Slice (This.string_Id, (0) + 1, index);
            end_Id := Unbounded_Slice (This.string_Id, ((index) + (1)) + 1, Length (This.string_Id));
            idFile := FileOutputStream_Package.Create (This.fileName);
            idOutData := DataOutputStream_Package.Create (idFile);
            idOutData.writeBytes (start & text & end_Id);
            idOutData.close;
            idFile.close;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.IDLOGGING) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, SmallInsert_Access'(This'Unchecked_Access), To_Unbounded_String ("after"), e);
            end if;
            return False;
                end;
        end;
   end after;

   function atEnd (This : in out SmallInsert; text : Unbounded_String) return Boolean is
      idFile : FileOutputStream_Access;
      idOutData : DataOutputStream_Access;
   begin
        begin
            idFile := FileOutputStream_Package.Create (This.fileName);
            idOutData := DataOutputStream_Package.Create (idFile);
            idOutData.writeBytes (This.string_Id & text);
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.IDLOGGING) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, SmallInsert_Access'(This'Unchecked_Access), To_Unbounded_String ("insertAtEnd"), e);
            end if;
            return False;
                end;
        end;
   end atEnd;

   procedure atBeginning (This : in out SmallInsert; text : Unbounded_String) is
      Java_Result : constant Boolean := SmallInsert'Class (This).atBeginning (text);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end atBeginning;

   procedure after (This : in out SmallInsert; text : Unbounded_String; after : Unbounded_String) is
      Java_Result : constant Boolean := SmallInsert'Class (This).after (text, after);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end after;

   procedure atEnd (This : in out SmallInsert; text : Unbounded_String) is
      Java_Result : constant Boolean := SmallInsert'Class (This).atEnd (text);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end atEnd;

end org.allbinary.logic.io.SmallInsert_Package;


