.class Lorg/telegram/ui/Components/EmojiView$12;
.super Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(ZZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private size:Lorg/telegram/ui/Components/Size;

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$12;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lorg/telegram/ui/Components/Size;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Size;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$12;->size:Lorg/telegram/ui/Components/Size;

    return-void
.end method


# virtual methods
.method protected getSizeForItem(I)Lorg/telegram/ui/Components/Size;
    .locals 4

    const/high16 v2, 0x42c80000    # 100.0f

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$12;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentGifs:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$3900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$12;->size:Lorg/telegram/ui/Components/Size;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v1, v1

    :goto_0
    iput v1, v3, Lorg/telegram/ui/Components/Size;->width:F

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$12;->size:Lorg/telegram/ui/Components/Size;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    if-eqz v3, :cond_0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v2, v2

    :cond_0
    iput v2, v1, Lorg/telegram/ui/Components/Size;->height:F

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-nez v3, :cond_1

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v3, :cond_4

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$12;->size:Lorg/telegram/ui/Components/Size;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/Size;->width:F

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$12;->size:Lorg/telegram/ui/Components/Size;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/Size;->height:F

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$12;->size:Lorg/telegram/ui/Components/Size;

    return-object v0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method
