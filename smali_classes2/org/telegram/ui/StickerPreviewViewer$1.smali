.class Lorg/telegram/ui/StickerPreviewViewer$1;
.super Ljava/lang/Object;
.source "StickerPreviewViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/StickerPreviewViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/StickerPreviewViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StickerPreviewViewer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$100(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->currentSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$200(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/telegram/ui/StickerPreviewViewer;->access$100(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string/jumbo v2, "SendStickerPreview"

    const v3, 0x7f0804d5

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    const-string/jumbo v3, "ViewPackPreview"

    const v4, 0x7f08056b

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lorg/telegram/ui/StickerPreviewViewer$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/StickerPreviewViewer$1$1;-><init>(Lorg/telegram/ui/StickerPreviewViewer$1;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    # setter for: Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v1, v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$502(Lorg/telegram/ui/StickerPreviewViewer;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$500(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/StickerPreviewViewer$1$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/StickerPreviewViewer$1$2;-><init>(Lorg/telegram/ui/StickerPreviewViewer$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$1;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$500(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
