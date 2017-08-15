.class Lorg/telegram/ui/ProfileNotificationsActivity$3$6;
.super Ljava/lang/Object;
.source "ProfileNotificationsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileNotificationsActivity$3;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileNotificationsActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileNotificationsActivity$3;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$6;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 8

    if-ltz p2, :cond_0

    const/16 v0, 0x64

    if-lt p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    rem-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, p2, 0xa

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "smart_max_count_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$6;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$3;

    iget-object v5, v5, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v5}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smart_delay_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$6;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$3;

    iget-object v3, v3, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v1, v1, 0x3c

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$6;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->adapter:Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$900(Lorg/telegram/ui/ProfileNotificationsActivity;)Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$6;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->adapter:Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$900(Lorg/telegram/ui/ProfileNotificationsActivity;)Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$6;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->smartRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1200(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->notifyItemChanged(I)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$6;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->dismissCurrentDialig()V

    goto/16 :goto_0
.end method
