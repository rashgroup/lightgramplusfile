.class Lorg/telegram/ui/ArticleViewer$1$1;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$1;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$1;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$1$1;->this$1:Lorg/telegram/ui/ArticleViewer$1;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$1$1;->this$1:Lorg/telegram/ui/ArticleViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$1;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3100(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$1$1;->this$1:Lorg/telegram/ui/ArticleViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$1;->this$0:Lorg/telegram/ui/ArticleViewer;

    # setter for: Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$3102(Lorg/telegram/ui/ArticleViewer;I)I

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$1$1;->this$1:Lorg/telegram/ui/ArticleViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$1;->this$0:Lorg/telegram/ui/ArticleViewer;

    # invokes: Lorg/telegram/ui/ArticleViewer;->showProgressView(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$3200(Lorg/telegram/ui/ArticleViewer;Z)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$1$1;->this$1:Lorg/telegram/ui/ArticleViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$1;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->isVisible:Z
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1600(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageFull;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$1$1;->this$1:Lorg/telegram/ui/ArticleViewer$1;

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer$1;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$1$1;->this$1:Lorg/telegram/ui/ArticleViewer$1;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$1;->val$anchor:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/ArticleViewer;->addPageToStack(Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;)V
    invoke-static {v1, v0, v2}, Lorg/telegram/ui/ArticleViewer;->access$3300(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$1$1;->this$1:Lorg/telegram/ui/ArticleViewer$1;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$1;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$1$1;->this$1:Lorg/telegram/ui/ArticleViewer$1;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
