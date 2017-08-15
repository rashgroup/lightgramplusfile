.class Lorg/telegram/ui/StickersActivity$ListAdapter$2;
.super Ljava/lang/Object;
.source "StickersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/StickersActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StickersActivity$ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x2

    const v7, 0x7f080516

    const/4 v1, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # invokes: Lorg/telegram/ui/StickersActivity;->sendReorder()V
    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$400(Lorg/telegram/ui/StickersActivity;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/StickerSetCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/StickerSetCell;->getStickersSet()Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/StickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->currentType:I
    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$500(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    if-eqz v0, :cond_0

    new-array v0, v6, [I

    aput v5, v0, v5

    new-array v1, v6, [Ljava/lang/CharSequence;

    const-string/jumbo v4, "StickersHide"

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    :goto_0
    new-instance v4, Lorg/telegram/ui/StickersActivity$ListAdapter$2$1;

    invoke-direct {v4, p0, v0, v2}, Lorg/telegram/ui/StickersActivity$ListAdapter$2$1;-><init>(Lorg/telegram/ui/StickersActivity$ListAdapter$2;[ILorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/StickersActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/StickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/StickersActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_0
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string/jumbo v4, "StickersHide"

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    const-string/jumbo v4, "StickersRemove"

    const v5, 0x7f080517

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    const-string/jumbo v4, "StickersShare"

    const v5, 0x7f080519

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    const/4 v4, 0x3

    const-string/jumbo v5, "StickersCopy"

    const v6, 0x7f080515

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    goto :goto_0

    :cond_1
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    if-eqz v0, :cond_2

    new-array v0, v6, [I

    aput v5, v0, v5

    new-array v1, v6, [Ljava/lang/CharSequence;

    const-string/jumbo v4, "StickersRemove"

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    goto :goto_0

    :cond_2
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string/jumbo v4, "StickersHide"

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    const-string/jumbo v4, "StickersRemove"

    const v5, 0x7f080517

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    const-string/jumbo v4, "StickersShare"

    const v5, 0x7f080519

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    const/4 v4, 0x3

    const-string/jumbo v5, "StickersCopy"

    const v6, 0x7f080515

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method
