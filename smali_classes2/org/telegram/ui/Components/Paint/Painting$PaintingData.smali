.class public Lorg/telegram/ui/Components/Paint/Painting$PaintingData;
.super Ljava/lang/Object;
.source "Painting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Painting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PaintingData"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public data:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Painting;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;->bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;->data:Ljava/nio/ByteBuffer;

    return-void
.end method
