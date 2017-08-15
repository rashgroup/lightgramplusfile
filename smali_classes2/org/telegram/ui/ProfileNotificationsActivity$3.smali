.class Lorg/telegram/ui/ProfileNotificationsActivity$3;
.super Ljava/lang/Object;
.source "ProfileNotificationsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileNotificationsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileNotificationsActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 10

    const/4 v3, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->customRow:I
    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$300(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_5

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    if-eqz v2, :cond_5

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "Notifications"

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->customEnabled:Z
    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    # setter for: Lorg/telegram/ui/ProfileNotificationsActivity;->customEnabled:Z
    invoke-static {v3, v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$102(Lorg/telegram/ui/ProfileNotificationsActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->customEnabled:Z
    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v1

    # setter for: Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$002(Lorg/telegram/ui/ProfileNotificationsActivity;Z)Z

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "custom_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->customEnabled:Z
    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->customEnabled:Z
    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->setChecked(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v4, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;->getItemViewType()I

    move-result v3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;->getAdapterPosition()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->customRow:I
    invoke-static {v6}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$300(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v6

    if-eq v5, v6, :cond_0

    if-eqz v3, :cond_0

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v0, v4

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->customEnabled:Z
    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v3

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_2

    :pswitch_1
    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->customEnabled:Z
    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v3

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_2

    :pswitch_2
    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextColorCell;

    iget-object v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->customEnabled:Z
    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v3

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Cells/TextColorCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_2

    :pswitch_3
    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/RadioCell;

    iget-object v3, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->customEnabled:Z
    invoke-static {v3}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v3

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Cells/RadioCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$500(Lorg/telegram/ui/ProfileNotificationsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$500(Lorg/telegram/ui/ProfileNotificationsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    # setter for: Lorg/telegram/ui/ProfileNotificationsActivity;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$502(Lorg/telegram/ui/ProfileNotificationsActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$500(Lorg/telegram/ui/ProfileNotificationsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$500(Lorg/telegram/ui/ProfileNotificationsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ProfileNotificationsActivity$3$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileNotificationsActivity$3$1;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$500(Lorg/telegram/ui/ProfileNotificationsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$500(Lorg/telegram/ui/ProfileNotificationsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_4
    :goto_3
    return-void

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->customEnabled:Z
    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->soundRow:I
    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_8

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.extra.ringtone.TYPE"

    const/4 v1, 0x2

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.ringtone.DEFAULT_URI"

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sound_path_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v6}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string/jumbo v5, "NoSound"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v3, v0

    :cond_6
    :goto_5
    const-string/jumbo v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    const/16 v1, 0xc

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_7
    :try_start_1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_5

    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->ringtoneRow:I
    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$700(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_a

    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.extra.ringtone.TYPE"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.ringtone.DEFAULT_URI"

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ringtone_path_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v6}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    const-string/jumbo v5, "NoSound"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_7
    const-string/jumbo v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    const/16 v1, 0xd

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_9
    :try_start_3
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_7

    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->vibrateRow:I
    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$800(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_b

    iget-object v7, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v2

    new-instance v6, Lorg/telegram/ui/ProfileNotificationsActivity$3$2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ProfileNotificationsActivity$3$2;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity$3;)V

    move v5, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/AlertsCreator;->createVibrationSelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JZZLjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->callsVibrateRow:I
    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1000(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_c

    iget-object v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v2

    const-string/jumbo v4, "calls_vibrate_"

    new-instance v5, Lorg/telegram/ui/ProfileNotificationsActivity$3$3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ProfileNotificationsActivity$3$3;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity$3;)V

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AlertsCreator;->createVibrationSelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JLjava/lang/String;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->priorityRow:I
    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_d

    iget-object v7, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v2

    new-instance v6, Lorg/telegram/ui/ProfileNotificationsActivity$3$4;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ProfileNotificationsActivity$3$4;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity$3;)V

    move v5, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/AlertsCreator;->createPrioritySelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JZZLjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->smartRow:I
    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1200(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    invoke-virtual {v2, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "smart_max_count_"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v7}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "smart_delay_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v8}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xb4

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-nez v2, :cond_11

    :goto_8
    div-int/lit8 v2, v6, 0x3c

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v6, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    new-instance v6, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    iget-object v7, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->val$context:Landroid/content/Context;

    invoke-direct {v6, v7, v1, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    new-instance v1, Lorg/telegram/ui/ProfileNotificationsActivity$3$5;

    invoke-direct {v1, p0, v5, v0}, Lorg/telegram/ui/ProfileNotificationsActivity$3$5;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity$3;Landroid/content/Context;I)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v2, v4, v0, v4, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    new-instance v0, Lorg/telegram/ui/ProfileNotificationsActivity$3$6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ProfileNotificationsActivity$3$6;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity$3;)V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "SmartNotificationsAlert"

    const v4, 0x7f080506

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0800f2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "SmartNotificationsDisabled"

    const v2, 0x7f080508

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ProfileNotificationsActivity$3$7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileNotificationsActivity$3$7;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity$3;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->colorRow:I
    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1300(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v2

    new-instance v6, Lorg/telegram/ui/ProfileNotificationsActivity$3$8;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ProfileNotificationsActivity$3$8;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity$3;)V

    move v5, v4

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Components/AlertsCreator;->createColorSelectDialog(Landroid/app/Activity;JZZLjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    :cond_f
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->popupEnabledRow:I
    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1400(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_10

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "Notifications"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "popup_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v5}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    check-cast p1, Lorg/telegram/ui/Cells/RadioCell;

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lorg/telegram/ui/Cells/RadioCell;

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    goto/16 :goto_3

    :cond_10
    iget-object v2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->popupDisabledRow:I
    invoke-static {v2}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1500(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_4

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "Notifications"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "popup_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v5}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    check-cast p1, Lorg/telegram/ui/Cells/RadioCell;

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$400(Lorg/telegram/ui/ProfileNotificationsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lorg/telegram/ui/Cells/RadioCell;

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    goto/16 :goto_3

    :cond_11
    move v0, v2

    goto/16 :goto_8

    :cond_12
    move-object v0, v3

    goto/16 :goto_7

    :cond_13
    move-object v1, v3

    goto/16 :goto_6

    :cond_14
    move-object v1, v3

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
