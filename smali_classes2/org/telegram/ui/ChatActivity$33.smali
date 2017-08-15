.class Lorg/telegram/ui/ChatActivity$33;
.super Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private size:Lorg/telegram/ui/Components/Size;

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;I)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$33;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lorg/telegram/ui/Components/Size;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Size;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$33;->size:Lorg/telegram/ui/Components/Size;

    return-void
.end method


# virtual methods
.method protected getFlowItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$33;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$33;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getFlowItemCount()I

    move-result v0

    goto :goto_0
.end method

.method protected getSizeForItem(I)Lorg/telegram/ui/Components/Size;
    .locals 4

    const/high16 v2, 0x42c80000    # 100.0f

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$33;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$33;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$33;->size:Lorg/telegram/ui/Components/Size;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v1, v1

    :goto_0
    iput v1, v3, Lorg/telegram/ui/Components/Size;->width:F

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$33;->size:Lorg/telegram/ui/Components/Size;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v3, :cond_1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v2, v2

    :cond_1
    iput v2, v1, Lorg/telegram/ui/Components/Size;->height:F

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-nez v3, :cond_2

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v3, :cond_5

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$33;->size:Lorg/telegram/ui/Components/Size;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/Size;->width:F

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$33;->size:Lorg/telegram/ui/Components/Size;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/Size;->height:F

    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$33;->size:Lorg/telegram/ui/Components/Size;

    return-object v0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$33;->size:Lorg/telegram/ui/Components/Size;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->w:I

    int-to-float v2, v2

    iput v2, v1, Lorg/telegram/ui/Components/Size;->width:F

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$33;->size:Lorg/telegram/ui/Components/Size;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->h:I

    int-to-float v0, v0

    iput v0, v1, Lorg/telegram/ui/Components/Size;->height:F

    goto :goto_2
.end method
