.class Lorg/telegram/ui/DataSettingsActivity$2$2;
.super Ljava/lang/Object;
.source "DataSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DataSettingsActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DataSettingsActivity$2;

.field final synthetic val$maskValues:[Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/DataSettingsActivity$2;[ZI)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iput-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->val$maskValues:[Z

    iput p3, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$300(Lorg/telegram/ui/DataSettingsActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$400(Lorg/telegram/ui/DataSettingsActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move v1, v2

    move v0, v2

    :goto_1
    const/4 v3, 0x6

    if-ge v1, v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->val$maskValues:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_1

    if-nez v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    or-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_4
    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    or-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_5
    const/4 v3, 0x4

    if-ne v1, v3, :cond_6

    or-int/lit8 v0, v0, 0x10

    goto :goto_2

    :cond_6
    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    or-int/lit8 v0, v0, 0x20

    goto :goto_2

    :cond_7
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->val$position:I

    iget-object v3, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->mobileDownloadRow:I
    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_a

    const-string/jumbo v2, "mobileDataDownloadMask"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    iput v0, v2, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    :cond_8
    :goto_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$500(Lorg/telegram/ui/DataSettingsActivity;)Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iget-object v0, v0, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$500(Lorg/telegram/ui/DataSettingsActivity;)Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->val$position:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->notifyItemChanged(I)V

    :cond_9
    return-void

    :cond_a
    iget v2, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->val$position:I

    iget-object v3, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->wifiDownloadRow:I
    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_b

    const-string/jumbo v2, "wifiDownloadMask"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    iput v0, v2, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    goto :goto_3

    :cond_b
    iget v2, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->val$position:I

    iget-object v3, p0, Lorg/telegram/ui/DataSettingsActivity$2$2;->this$1:Lorg/telegram/ui/DataSettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/DataSettingsActivity$2;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    # getter for: Lorg/telegram/ui/DataSettingsActivity;->roamingDownloadRow:I
    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_8

    const-string/jumbo v2, "roamingDownloadMask"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    iput v0, v2, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    goto :goto_3
.end method
