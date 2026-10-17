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


package body org.allbinary.logic.io.SmallDelete_Package is

   procedure Initialize_Fields (This : in out SmallDelete'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out SmallDelete'Class; fileName : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.fileName := fileName;
        This.string_Id := AbFileSystem_Package.getInstance.readAsString (fileName);
   end Initialize;

   function Create (fileName : Unbounded_String) return SmallDelete_Access is
      This : constant SmallDelete_Access := new SmallDelete;
   begin
      Initialize (This.all, fileName);
      return This;
   end Create;

   function deleteAtStart (This : in out SmallDelete; start : Unbounded_String; end_Id : Unbounded_String) return Boolean is
      beginIndex : Integer;
      endIndex : Integer;
      text : Unbounded_String;
      idFile : FileOutputStream_Access;
      idOutData : DataOutputStream_Access;
   begin
        begin
            beginIndex := 0;
            endIndex := 0;
            beginIndex := (Index (This.string_Id, To_String (start)) - 1);
            endIndex := (Index (This.string_Id, To_String (end_Id)) - 1);
            if (((((endIndex) > (beginIndex)) and then ((beginIndex) >= (0))) and then ((endIndex) >= (0))) and then ((beginIndex) < (10))) and then ((endIndex) < (525)) then
                text := Unbounded_Slice (This.string_Id, (endIndex) + 1, Length (This.string_Id));
                idFile := FileOutputStream_Package.Create (This.fileName);
                idOutData := DataOutputStream_Package.Create (idFile);
                idOutData.writeBytes (text);
                return True;
            end if;
            return False;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.IDLOGGING) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("deleteAtStart"), e);
            end if;
            return False;
                end;
        end;
   end deleteAtStart;

   function deleteBetween (This : in out SmallDelete; start : Unbounded_String; end_Id : Unbounded_String; newText : Unbounded_String) return Boolean is
      beginIndex : Integer;
      endIndex : Integer;
      newStart : Unbounded_String;
      text : Unbounded_String;
      idFile : FileOutputStream_Access;
      idOutData : DataOutputStream_Access;
   begin
        begin
            beginIndex := 0;
            endIndex := 0;
            beginIndex := (Index (This.string_Id, To_String (start)) - 1);
            endIndex := (Index (This.string_Id, To_String (end_Id)) - 1);
            if (((((endIndex) > (beginIndex)) and then ((beginIndex) >= (0))) and then ((endIndex) >= (0))) and then ((beginIndex) < (50))) and then ((endIndex) < (425)) then
                newStart := Unbounded_Slice (This.string_Id, (0) + 1, beginIndex);
                text := Unbounded_Slice (This.string_Id, ((endIndex) + (Length (end_Id))) + 1, Length (This.string_Id));
                idFile := FileOutputStream_Package.Create (This.fileName);
                idOutData := DataOutputStream_Package.Create (idFile);
                idOutData.writeBytes (newStart & newText & text);
                return True;
            end if;
            return False;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.IDLOGGING) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("deleteAtStart"), e);
            end if;
            return False;
                end;
        end;
   end deleteBetween;

   procedure deleteAtStart (This : in out SmallDelete; start : Unbounded_String; end_Id : Unbounded_String) is
      Java_Result : constant Boolean := SmallDelete'Class (This).deleteAtStart (start, end_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end deleteAtStart;

   procedure deleteBetween (This : in out SmallDelete; start : Unbounded_String; end_Id : Unbounded_String; newText : Unbounded_String) is
      Java_Result : constant Boolean := SmallDelete'Class (This).deleteBetween (start, end_Id, newText);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end deleteBetween;

end org.allbinary.logic.io.SmallDelete_Package;


