use itertools::Itertools;
use swayipc::{Connection, EventType, Fallible};

fn main() -> Fallible<()> {
    // active workspace
    let connection = Connection::new()?;
    for _event in connection.subscribe(&[EventType::Workspace])? {
        let workspaces = Connection::new()?
            .get_workspaces()?
            .iter()
            .sorted_by_key(|wsp| wsp.num)
            .map(|wsp| {
                format!(
                    r#"<box class="workspace {}">{}</box>"#,
                    if wsp.focused { "focused" } else { "unfocused" },
                    wsp.name
                )
            })
            .join("");
        println!(r#"<box class="workspaces">{}</box>"#, workspaces);
    }
    Ok(())
}
