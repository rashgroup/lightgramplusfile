.class Lnet/hockeyapp/android/views/AttachmentView$3;
.super Ljava/lang/Object;
.source "AttachmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/views/AttachmentView;->configureViewForThumbnail(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/views/AttachmentView;

.field final synthetic val$openOnClick:Z


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/views/AttachmentView;Z)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/views/AttachmentView$3;->this$0:Lnet/hockeyapp/android/views/AttachmentView;

    iput-boolean p2, p0, Lnet/hockeyapp/android/views/AttachmentView$3;->val$openOnClick:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lnet/hockeyapp/android/views/AttachmentView$3;->val$openOnClick:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lnet/hockeyapp/android/views/AttachmentView$3;->this$0:Lnet/hockeyapp/android/views/AttachmentView;

    # getter for: Lnet/hockeyapp/android/views/AttachmentView;->mAttachmentUri:Landroid/net/Uri;
    invoke-static {v1}, Lnet/hockeyapp/android/views/AttachmentView;->access$300(Lnet/hockeyapp/android/views/AttachmentView;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lnet/hockeyapp/android/views/AttachmentView$3;->this$0:Lnet/hockeyapp/android/views/AttachmentView;

    # getter for: Lnet/hockeyapp/android/views/AttachmentView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lnet/hockeyapp/android/views/AttachmentView;->access$400(Lnet/hockeyapp/android/views/AttachmentView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
