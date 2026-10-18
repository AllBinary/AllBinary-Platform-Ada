--  Generated Code Do Not Modify


with org.allbinary.media.image.Graphics2D_Package; use org.allbinary.media.image.Graphics2D_Package;

package body org.allbinary.media.image.BufferedImageUtil2_Package is

   procedure Initialize_Fields (This : in out BufferedImageUtil2'Class) is
   begin
      null;
      This.imageUtil := ImageUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out BufferedImageUtil2'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BufferedImageUtil2_Access is
      This : constant BufferedImageUtil2_Access := new BufferedImageUtil2;
   begin
      BufferedImageUtil2_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return BufferedImageUtil2_Access is
   begin
        return BufferedImageUtil2_Package.instance;
   end getInstance;

   function createSpriteImage (This : in out BufferedImageUtil2; bufferedImageArray : BufferedImage_Access_Array_Access) return BufferedImage_Access is
      columns : Integer;
      max : Integer;
      rows : Integer;
      bufferedImage : BufferedImage_Access;
      g : Graphics2D_Access;
      columnIndex : Integer;
      rowIndex : Integer;
      index : Integer;
   begin
        columns := bufferedImageArray'Length;
        max := columns;
        rows := 0;
        if (bufferedImageArray'Length) < (columns) then
            columns := bufferedImageArray'Length;
        end if;
        rows := ((bufferedImageArray'Length) / (columns));
        if ((bufferedImageArray'Length) rem (columns)) /= (0) then
            rows := rows + 1;
        end if;
        bufferedImage := This.imageUtil.create ((bufferedImageArray (0).getWidth (null)) * (columns), (bufferedImageArray (0).getHeight (null)) * (rows));
        g := bufferedImage.createGraphics;
        columnIndex := 0;
        rowIndex := 0;
        for index in 0 .. (bufferedImageArray'Length) - 1 loop
            if (((index) / (max)) /= (0)) and then (((index) rem (max)) = (0)) then
                rowIndex := rowIndex + 1;
                columnIndex := 0;
            end if;
            g.drawImage (bufferedImageArray (index), (bufferedImageArray (index).getWidth (null)) * (columnIndex), (bufferedImageArray (index).getHeight (null)) * (rowIndex), bufferedImageArray (index).getWidth (null), bufferedImageArray (index).getHeight (null), null);
            columnIndex := columnIndex + 1;
        end loop;
        g.dispose;
        return bufferedImage;
   end createSpriteImage;

   procedure createSpriteImage (This : in out BufferedImageUtil2; bufferedImageArray : BufferedImage_Access_Array_Access) is
      Java_Result : constant BufferedImage_Access := BufferedImageUtil2'Class (This).createSpriteImage (bufferedImageArray => bufferedImageArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createSpriteImage;

begin
   null;
   instance := BufferedImageUtil2_Package.Create;

end org.allbinary.media.image.BufferedImageUtil2_Package;


