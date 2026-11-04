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


with org.allbinary.audio.AudioContentTypeData_Package; use org.allbinary.audio.AudioContentTypeData_Package;
with org.allbinary.audio.AudioContentTypeData_Package;

package body org.allbinary.audio.AudioContentTypeDataFactory_Package is

   subtype AudioContentTypeData_Access is org.allbinary.audio.AudioContentTypeData_Package_References.AudioContentTypeData_Access;
   function "=" (Left, Right : AudioContentTypeData_Access) return Boolean renames org.allbinary.audio.AudioContentTypeData_Package_References."=";
   subtype AudioContentTypeData_Access_Array is org.allbinary.audio.AudioContentTypeData_Package_References.AudioContentTypeData_Access_Array;
   function "=" (Left, Right : AudioContentTypeData_Access_Array) return Boolean renames org.allbinary.audio.AudioContentTypeData_Package_References."=";
   subtype AudioContentTypeData_Access_Array_Access is org.allbinary.audio.AudioContentTypeData_Package_References.AudioContentTypeData_Access_Array_Access;
   function "=" (Left, Right : AudioContentTypeData_Access_Array_Access) return Boolean renames org.allbinary.audio.AudioContentTypeData_Package_References."=";
   subtype AudioContentTypeData_Access_Array_Access_Array is org.allbinary.audio.AudioContentTypeData_Package_References.AudioContentTypeData_Access_Array_Access_Array;
   function "=" (Left, Right : AudioContentTypeData_Access_Array_Access_Array) return Boolean renames org.allbinary.audio.AudioContentTypeData_Package_References."=";
   subtype AudioContentTypeData_Access_Array_Access_Array_Access is org.allbinary.audio.AudioContentTypeData_Package_References.AudioContentTypeData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AudioContentTypeData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.audio.AudioContentTypeData_Package_References."=";
   procedure Initialize_Fields (This : in out AudioContentTypeDataFactory'Class) is
   begin
      null;
      This.MIME_AUDIO_TONE := AudioContentTypeData_Package.Create (To_Unbounded_String ("audio/x-tone-seq"));
      This.MIME_AUDIO_AMR := AudioContentTypeData_Package.Create (To_Unbounded_String ("audio/amr"));
      This.MIME_AUDIO_AMR_WB := AudioContentTypeData_Package.Create (To_Unbounded_String ("audio/amr-wb"));
      This.MIME_AUDIO_WAV := AudioContentTypeData_Package.Create (To_Unbounded_String ("audio/x-wav"));
      This.MIME_AUDIO_MIDI := AudioContentTypeData_Package.Create (To_Unbounded_String ("audio/midi"));
      This.MIME_AUDIO_SP_MIDI := AudioContentTypeData_Package.Create (To_Unbounded_String ("audio/sp-midi"));
   end Initialize_Fields;


   function getInstance return AudioContentTypeDataFactory_Access is
   begin
        return AudioContentTypeDataFactory_Access (AudioContentTypeDataFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out AudioContentTypeDataFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AudioContentTypeDataFactory_Access is
      This : constant AudioContentTypeDataFactory_Access := new AudioContentTypeDataFactory;
   begin
      AudioContentTypeDataFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := AudioContentTypeDataFactory_Package.Create;

end org.allbinary.audio.AudioContentTypeDataFactory_Package;


